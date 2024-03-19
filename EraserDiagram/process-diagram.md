
title Ecowise Home Hub Energy Saving Tips

// Define nodes and relationships
Start [shape: oval, icon: flag] > User logs in [icon: log-in]
User logs in > Select home appliances [icon: home]
Select home appliances > Input monthly energy usage [icon: bar-chart-2]
Input monthly energy usage > Calculate potential savings [icon: calculator]
Calculate potential savings > Display energy saving tips [icon: bulb]
Display energy saving tips > User selects tips to implement [shape: diamond, icon: check-circle]
User selects tips to implement > Implement tips [shape: oval, icon: tool]: Yes
User selects tips to implement > End [shape: oval, icon: check]: No
Implement tips > Track progress [icon: activity]
Track progress > Display updated savings [icon: dollar-sign]
Display updated savings > End

// Define Groups
For each selected tip [icon: repeat] {
  Implement tips
  Track progress
}