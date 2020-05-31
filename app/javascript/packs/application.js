import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';
import { initSwiper } from '../plugins/init_charities_carousel';
import { initDonateAmounts } from '../plugins/init_donate_amounts';

initMapbox();

document.addEventListener('DOMContentLoaded', () => {
  initSwiper()
  initDonateAmounts()
})



