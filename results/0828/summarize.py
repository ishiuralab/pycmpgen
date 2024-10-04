#!/usr/bin/env python3

import sys
import re
import matplotlib.pyplot as plt

def parse(filename):
    with open(filename, 'r') as f:
        lines = f.read().split('\n')
    data = {}
    for idx, line in enumerate(lines):
        if line:
            if match := re.match(r'^ *(\d+), stage: [ ✔] *(\d+), cost: [ ✔] *(\d+), impl: *(\d+), delay: *(\d+\.\d+)ns, logic: *(\d+\.\d+)%, route: *(\d+\.\d+)%, level: *(\d+), carry4: *(\d+), lut2: *(\d+), lut3: *(\d+), lut4: *(\d+), lut5: *(\d+), lut6: *(\d+)$', line):
                num = int(match.group(1))
                stage = int(match.group(2))
                cost = int(match.group(3))
                impl = int(match.group(4))
                delay = float(match.group(5))
                logic = float(match.group(6))
                route = float(match.group(7))
                level = int(match.group(8))
                carry4 = int(match.group(9))
                lut2 = int(match.group(10))
                lut3 = int(match.group(11))
                lut4 = int(match.group(12))
                lut5 = int(match.group(13))
                lut6 = int(match.group(14))
                data[num] = {
                    'stage': stage,
                    'cost': cost,
                    'impl': impl,
                    'delay': delay,
                    'logic': logic,
                    'route': route,
                    'level': level,
                    'carry4': carry4,
                    'lut2': lut2,
                    'lut3': lut3,
                    'lut4': lut4,
                    'lut5': lut5,
                    'lut6': lut6,
                }
    return data

def render(title, x_data, y_range,
           x_label, y_label,
           y1_data, y2_data,
           label1, label2,
           marker1, marker2,
           color1, color2,
           filename, reduction=True):
    plt.figure(figsize=(20, 10))
    fig, ax1 = plt.subplots()
    ymin, ymax = y_range
    ax1.set_ylim(ymin, ymax)
    ax1.plot(x_data, y1_data, marker=marker1, markersize=3, color=color1, label=label1, linewidth=1)
    ax1.plot(x_data, y2_data, marker=marker2, markersize=3, color=color2, label=label2, linewidth=1)
    ax1.grid(True, which='major', linestyle='-', linewidth=0.75)
    ax1.set_ylabel(y_label)
    ax1.set_xlabel(x_label)
    ax1.legend()

    plt.title(title)
    plt.savefig(filename, dpi=300)


    if reduction:
        reduction = [(y2 - y1) / y2 * 100 for y1, y2 in zip(y1_data, y2_data)]
        fig, ax1 = plt.subplots()
        ax1.set_ylim(-30, 30)
        ax1.plot(x_data, reduction, marker='', color='black', label='Reduction', linewidth=0.5)
        ax1.set_ylabel('Reduction(%)')
        ax1.grid(True, which='major', linestyle='-', linewidth=0.75)
        ax1.set_xlabel(x_label)
        plt.title(f'{title} Reduction Rate')
        plt.savefig(f'reduction_{filename}', dpi=300)

def plot(cascade, default):
    assert cascade.keys() == default.keys()
    x_axis = list(map(lambda x: x**2,cascade.keys()))
    cascade_impl = [cascade[num]['impl'] for num in cascade.keys()]
    default_impl = [default[num]['impl'] for num in default.keys()]

    cascade_delay = [cascade[num]['delay'] for num in cascade.keys()]
    default_delay = [default[num]['delay'] for num in default.keys()]

    cascade_stage = [cascade[num]['stage'] for num in cascade.keys()]
    default_stage = [default[num]['stage'] + 1 for num in default.keys()]

    cascade_logic = [cascade[num]['logic'] for num in cascade.keys()]
    default_logic = [default[num]['logic'] for num in default.keys()]

    cascade_level = [cascade[num]['level'] for num in cascade.keys()]
    default_level = [default[num]['level'] for num in default.keys()]

    cascade_total_level = [cascade[num]['carry4'] + sum(cascade[num][f'lut{i}'] * (i + 1) for i in range(2, 6)) for num in cascade.keys()]
    default_total_level = [default[num]['carry4'] + sum(default[num][f'lut{i}'] * (i + 1) for i in range(2, 6)) for num in default.keys()]

    cascade_carry4 = [cascade[num]['carry4'] for num in cascade.keys()]
    default_carry4 = [default[num]['carry4'] for num in default.keys()]


    render('#SLICE', x_axis, (0, 200),
           'Compressed bits', '#SLICE',
           cascade_impl, default_impl,
           'proposed', 'conventional',
           '+', 'o',
           'cyan', 'orange',
           'slice.png',
           True)


    render('#Stage (#LUTs on the critcal path)', x_axis, (2.5, 5.5),
           'Compressed bits', '#stage',
           cascade_stage, default_stage,
           'proposed', 'conventional',
           '+', 'o',
           'cyan', 'orange',
           'stage.png',
           False)

    render('Delay', x_axis, (8, 16),
           'Compressed bits', 'delay (ns)',
           cascade_delay, default_delay,
           'proposed', 'conventional',
           '+', 'o',
           'cyan', 'orange',
           'delay.png',
           True)

    render('#Logic Level', x_axis, (min(cascade_total_level + default_total_level) - 1, max(cascade_total_level + default_total_level) + 1),
           'Compressed bits', '#level',
           cascade_total_level, default_total_level,
           'proposed', 'conventional',
           '+', 'o',
           'cyan', 'orange',
           'logic_level.png',
           False)

    render('#carry4 Level', x_axis, (min(cascade_carry4 + default_carry4) - 1, max(cascade_carry4 + default_carry4) + 1),
           'Compressed bits', '#carry4 level',
           cascade_carry4, default_carry4,
           'proposed', 'conventional',
           '+', 'o',
           'cyan', 'orange',
           'carry4_level.png',
           False)


    plt.figure(figsize=(20,10))
    fig, ax1 = plt.subplots()
    ax1.set_ylim(8, 16)
    line1, = ax1.plot(x_axis, cascade_delay, marker='+', markersize=3, color='cyan', label='proposed (delay)', linewidth=0.5)
    line2, = ax1.plot(x_axis, default_delay, marker='o', markersize=3, color='orange', label='conventional (delay)', linewidth=0.5)
    ax1.grid(True, which='major', linestyle='-', linewidth=0.75)
    ax1.set_xlabel('compressed bits')
    ax1.set_ylabel('delay (ns)')
    ax1.legend(loc='upper left')

    ax2 = ax1.twinx()
    ax2.set_yticks([3.0, 4.0, 5.0])
    ax2.set_ylim(min(cascade_carry4 + default_carry4) - 1, max(cascade_carry4 + default_carry4) + 1)
    line3, = ax2.plot(x_axis, cascade_carry4, marker='+', markersize=3, color='blue', label='proposed (level)', linewidth=0.5)
    line4, = ax2.plot(x_axis, default_carry4, marker='o', markersize=3, color='red', label='conventional (level)', linewidth=0.5)
    ax2.set_ylabel('#carry4 level')
    ax2.legend(loc='lower right')

    lines = [line1, line2, line3, line4]
    labels = [line.get_label() for line in lines]
    #ax2.legend(lines, labels, loc='lower right')

    plt.title('Delay & Carry4 Level')
    plt.savefig('delay_carry4.png', dpi=300)
    


if __name__ == '__main__':
    cascade_digest = 'cascade_mul_digest.txt'
    default_digest = 'default_mul_digest.txt'
    cascade = parse(cascade_digest)
    default = parse(default_digest)
    plot(cascade, default)
