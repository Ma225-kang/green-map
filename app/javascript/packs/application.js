import swal from 'sweetalert';

import "bootstrap";

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';

initMapbox();

import { geolocateUser } from '../plugins/geolocate_user';

geolocateUser();

import { selectVolume } from '../components/form_volume';

selectVolume();

import '../components/select_picture';

import '../components/select_trash';

import '../components/participation_proof';

import '../components/preview_picture';
