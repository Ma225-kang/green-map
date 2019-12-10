import "bootstrap";

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import "../plugins/flatpickr"

import { initMapbox } from '../plugins/init_mapbox';

initMapbox();

import { geolocateUser } from '../plugins/geolocate_user';

geolocateUser();

import { listenForVolumeSelection } from '../components/form_volume';

listenForVolumeSelection();

import { listenForTimeSlotSelection } from '../components/time_slot_mission';

listenForTimeSlotSelection();

import { displayModalIfErrors } from '../components/mission_modal_form';

displayModalIfErrors();

import '../components/select_picture';

import '../components/select_trash';

import '../components/participation_proof';

import '../components/preview_picture_place';

import '../components/preview_picture_mission';

import '../components/preview_picture_participation';

import { selectVol2 } from '../components/form_place_after';

selectVol2();
