import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["SKATEBOARD", "BIKE", "SCOOTER", "ROLLER SKATES"],
    typeSpeed: 150,
    loop: true
  });
};

export { loadDynamicBannerText };
