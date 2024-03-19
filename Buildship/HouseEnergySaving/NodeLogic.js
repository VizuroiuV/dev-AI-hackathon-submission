export default function generateEnergySavingTips({
    devices
}) {
    const tips = {
        'refrigerator': 'Ensure your refrigerator is not set colder than necessary and that the door seal is tight.',
        'washing_machine': 'Use cold water for laundry and try to wash full loads.',
        'television': 'Unplug the TV when not in use or use a smart power strip.',
        'microwave_oven': 'Use a microwave oven for heating small food quantities instead of the stove to save energy.',
        'computer': 'Turn off your computer when not in use and consider using power-saving modes.',
        'light_bulbs': 'Replace incandescent bulbs with LED bulbs for greater efficiency.',
        'air_conditioning': 'Keep windows and doors closed when AC is running and use fans for cooling when possible.',
        'electric_stove': 'Use lids on pots to cook food faster and save energy.'
    };
    const selectedTips = devices.map(device => tips[device]).filter(tip => tip !== undefined);
    const additionalTips = ['Regularly clean and maintain devices to ensure they operate efficiently.',
        'Consider investing in energy-efficient appliances when it is time for replacements.'
    ];
    return {
        tipsResponse: `${selectedTips.join('.')}${selectedTips.length > 0 ? '.' : ' '}
  ${additionalTips.join('.')}.`
    };
}