class Information {

  String getImageIcon(int index) {
    String imageName = 'images';
    if (index == 0) {
      return '$imageName/bike.jpg';
    }
    if (index == 1) {
      return '$imageName/recycle.jpg';
    }
    if (index == 2) {
      return '$imageName/tree.png';
    }
    if (index == 3) {
      return '$imageName/educate.jpg';
    }
    if (index == 4) {
      return '$imageName/volunteer.jpg';
    }
    if (index == 5) {
      return '$imageName/water.jpg';
    }
    if (index == 6) {
      return '$imageName/eco_bag.jpg';
    }
    if (index == 7) {
      return '$imageName/bulb.jpg';
    }

  }

  String getText(int index) {
    if (index == 0) {
      return 'BiKe MoRe DrIvE LeSs';
    }
    if (index == 1) {
      return "ReDuCe REUSE ReCycLe";
    }
    if (index == 2) {
      return 'PlAnT a TrEe';
    }
    if (index == 3) {
      return 'EdUCaTe';
    }
    if (index == 4) {
      return 'VoLuNteer';
    }
    if (index == 5) {
      return 'CoNsErVe WaTeR';
    }
    if (index == 6) {
      return 'I am NOT A PlAsTiC BaG';
    }
    if (index == 7) {
      return 'LoNg LaStInG LiGhT BuLbs';
    }
  }

  String getSlide1Description(int index) {
    if (index == 0) {
      return '- Biking makes you healthier \n'
          '- Reduces household emissions \n'
          '- Reduces traffic\n'
          '- Improve air quality \n'
          '- Protects wildlife';
    }
    if (index == 1) {
      return '- Follow 3R\'s \n'
          ' - Conserve natural resources \n'
          ' - Landfill space and energy \n'
          ' - Households can save money by reusing materials and products \n';
    }
    if (index == 2) {
      return '- Planting tress is one of the biggest and cheapest ways of taking'
          ' CO2 out of the atmosphere to tackle climate crisis \n'
          '- It helps in purifying Air \n'
          '- Helps to cool down the streets \n'
          '- Natural Air Conditioning \n';
    }
    if (index == 3) {
      return '- Education makes people care about environment \n'
          '- Can reduce vulnerability to climate change \n'
          '- Can help others understand importance of natural resources \n';
    }
    if (index == 4) {
      return ' - Volunteer for cleanups in your community \n'
          ' - Make it a better place \n'
          ' - Contribute to a community garden \n'
          ' - Plant a TREE';
    }
    if (index == 5) {
      return ' - Saving water helps to preserve our environment \n'
          ' - Reduces the energy required to process and deliver\n'
          ' - Helps in reducing pollution \n'
          ' - Helps in conserving fuel resources \n';
    }
    if (index == 6) {
      return ' - Plastic bags are serious damage to environment \n'
          ' - They get into soil and release toxic chemicals \n'
          ' - Harmful to wildlife  \n'
          ' - Clogged Sewage Systems \n';
    }
    if (index == 7) {
      return ' - SAVE ENERGY \n'
          ' - SAVE MONEY \n'
          ' - SAVE THE PLANET \n';
    }
  }
  
  String getSlide2Description(int index) {
    if (index == 0) {
      return '- Makes you more productive \n'
          '- Takes less to make a bike \n'
          '- Saves entire forests \n'
          '- Helps support local business \n'
          '- Keeps land free for nature';
    }
    if (index == 1) {
      return '- Use a refillable water bottle instead of buying individual'
          'plastic bottles of water \n'
          ' - Write or print on both sides of paper \n'
          ' - Shop responsibly \n'
          ' - Recycle electronics \n';
    }
    if (index == 2) {
      return '- Trees also help to save water \n'
          ' - Renewable Energy Source \n'
          ' - Provides Shelters for wildlife';
    }
    if (index == 3) {
      return 'Practical tips schools can adopt: \n'
          ' - Introduce the 3 R\'s: reduce waste, reuse resources, and recycle materials.\n'
          ' - Organise tree planting days at school and explain why they are important\n'
          ' - Encourage children to switch off all appliances and lights when not in use \n';
    }
    if (index == 4) {
      return ' - Initiate creative awareness \n'
          ' - Make new friends and meet other like-minded individuals \n'
          ' - Participate in a River Clean-up';
    }
    if (index == 5) {
      return ' - Only run water when it is needed \n'
          ' - Adopt water conservation methods \n'
          ' - Reduce food waste \n'
          ' - Install rain water harvesting in every building \n';
    }
    if (index == 6) {
      return ' One ton of recycled plastic helps: \n'
          ' - Save 685 Gallons oF Oil \n'
          ' - Save 30 Cubic Yards of Landfill Space\n'
          ' - Reduce Air Pollution \n'
          ' - Save sea creatures such as Birds, Fish and Dolphins';
    }
    if (index == 7) {
      return ' - LEDs use 90% less energy than '
          ' incandescent lights\n'
          ' - Reduces greenhouse emissions '
          ' from power plants';
    }
  }

  String getSlide1DialogTitle(int index) {
    if (index == 0) {
      return 'BiKe MoRe DrIvE LeSs -  WHY?';
    }
    if (index == 1) {
      return "ReDuCe REUSE ReCycLe (3R's) - WHY? ";
    }
    if (index == 2) {
      return 'LeT\'s PlAnT a Tree - LooK At ThE AmAzInG AdVaNtAgEs!';
    }
    if (index == 3) {
      return 'EdUCaTe EvErYoNe';
    }
    if (index == 4) {
      return 'ToGeThEr SaVe ThE PlAnEt -  TiPs!';
    }
    if (index == 5) {
      return 'CoNsErVe WaTeR - WHY?';
    }
    if (index == 6) {
      return 'SaY NO To PlAsTiC - WhY?';
    }
    if (index == 7) {
      return 'WHY LED LiGhTs?';
    }
  }

  String getSlide2DialogTitle(int index) {
    if (index == 0) {
      return 'RiDiNg a BiKe CaN SaVe ThE WoRlD';
    }
    if (index == 1) {
      return "ReDuCe REUSE ReCycLe (3R's) - HoW? ";
    }
    if (index == 2) {
      return 'MaNy MoRe PrOs!';
    }
    if (index == 3) {
      return 'HOW?';
    }
    if (index == 4) {
      return 'Do GooD ThRoUgh VoLuNteeRinG ';
    }
    if (index == 5) {
      return 'CoNsErVe WaTeR - HoW?';
    }
    if (index == 6) {
      return 'SaY NO To PlAsTiC - BeNeFiTs';
    }
    if (index == 7) {
      return 'Why Environmentalists AlwaYs Talk About Light bulbs?';
    }
  }
}
