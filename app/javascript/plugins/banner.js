import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Make your world brighter."],
    typeSpeed: 70,
    loop: false
  });
}

export { loadDynamicBannerText };
