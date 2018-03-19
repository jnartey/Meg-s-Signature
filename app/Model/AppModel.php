<?php
/**
 * Application model for Cake.
 *
 * This file is application-wide model file. You can put all
 * application-wide model-related methods here.
 *
 * PHP 5
 *
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @package       app.Model
 * @since         CakePHP(tm) v 0.2.9
 * @license       MIT License (http://www.opensource.org/licenses/mit-license.php)
 */

App::uses('Model', 'Model');

/**
 * Application model for Cake.
 *
 * Add your application-wide methods in the class below, your models
 * will inherit them.
 *
 * @package       app.Model
 */
class AppModel extends Model {
	
	////////////////////////////////////////////////////////////

	    public $recursive = -1;

	////////////////////////////////////////////////////////////

	    public $actsAs = array('Containable');

	////////////////////////////////////////////////////////////

	    public function states($id = null) {
	        $states = array(
	            'AL' => 'Alabama',
	            'AK' => 'Alaska',
	            'AZ' => 'Arizona',
	            'AR' => 'Arkansas',
	            'CA' => 'California',
	            'CO' => 'Colorado',
	            'CT' => 'Connecticut',
	            'DE' => 'Delaware',
	            'DC' => 'District Of Columbia',
	            'FL' => 'Florida',
	            'GA' => 'Georgia',
	            'HI' => 'Hawaii',
	            'ID' => 'Idaho',
	            'IL' => 'Illinois',
	            'IN' => 'Indiana',
	            'IA' => 'Iowa',
	            'KS' => 'Kansas',
	            'KY' => 'Kentucky',
	            'LA' => 'Louisiana',
	            'ME' => 'Maine',
	            'MD' => 'Maryland',
	            'MA' => 'Massachusetts',
	            'MI' => 'Michigan',
	            'MN' => 'Minnesota',
	            'MS' => 'Mississippi',
	            'MO' => 'Missouri',
	            'MT' => 'Montana',
	            'NE' => 'Nebraska',
	            'NV' => 'Nevada',
	            'NH' => 'New Hampshire',
	            'NJ' => 'New Jersey',
	            'NM' => 'New Mexico',
	            'NY' => 'New York',
	            'NC' => 'North Carolina',
	            'ND' => 'North Dakota',
	            'OH' => 'Ohio',
	            'OK' => 'Oklahoma',
	            'OR' => 'Oregon',
	            'PA' => 'Pennsylvania',
	            'RI' => 'Rhode Island',
	            'SC' => 'South Carolina',
	            'SD' => 'South Dakota',
	            'TN' => 'Tennessee',
	            'TX' => 'Texas',
	            'UT' => 'Utah',
	            'VT' => 'Vermont',
	            'VA' => 'Virginia',
	            'WA' => 'Washington',
	            'WV' => 'West Virginia',
	            'WI' => 'Wisconsin',
	            'WY' => 'Wyoming',
	            'AE' => 'AE',
	            'AA' => 'AA',
	            'AP' => 'AP'
	        );
	        if($id) {
	            if(isset($states[$id])) {
	                return $states[$id];
	            }
	        } else {
	            return $states;
	        }
	    }

	////////////////////////////////////////////////////////////

	    public function countries($id = null) {
	        $countries = array(
	            'AF' => 'Afghanistan',
	            'AX' => 'Aland Islands',
	            'AL' => 'Albania',
	            'DZ' => 'Algeria',
	            'AS' => 'American Samoa',
	            'AD' => 'Andorra',
	            'AO' => 'Angola',
	            'AI' => 'Anguilla',
	            'AQ' => 'Antarctica',
	            'AG' => 'Antigua And Barbuda',
	            'AR' => 'Argentina',
	            'AM' => 'Armenia',
	            'AW' => 'Aruba',
	            'AU' => 'Australia',
	            'AT' => 'Austria',
	            'AZ' => 'Azerbaijan',
	            'BS' => 'Bahamas',
	            'BH' => 'Bahrain',
	            'BD' => 'Bangladesh',
	            'BB' => 'Barbados',
	            'BY' => 'Belarus',
	            'BE' => 'Belgium',
	            'BZ' => 'Belize',
	            'BJ' => 'Benin',
	            'BM' => 'Bermuda',
	            'BT' => 'Bhutan',
	            'BO' => 'Bolivia',
	            'BA' => 'Bosnia And Herzegovina',
	            'BW' => 'Botswana',
	            'BV' => 'Bouvet Island',
	            'BR' => 'Brazil',
	            'IO' => 'British Indian Ocean Territory',
	            'BN' => 'Brunei Darussalam',
	            'BG' => 'Bulgaria',
	            'BF' => 'Burkina Faso',
	            'BI' => 'Burundi',
	            'KH' => 'Cambodia',
	            'CM' => 'Cameroon',
	            'CA' => 'Canada',
	            'CV' => 'Cape Verde',
	            'KY' => 'Cayman Islands',
	            'CF' => 'Central African Republic',
	            'TD' => 'Chad',
	            'CL' => 'Chile',
	            'CN' => 'China',
	            'CX' => 'Christmas Island',
	            'CC' => 'Cocos (keeling) Islands',
	            'CO' => 'Colombia',
	            'KM' => 'Comoros',
	            'CG' => 'Congo',
	            'CD' => 'Congo, The Democratic Republic Of The',
	            'CK' => 'Cook Islands',
	            'CR' => 'Costa Rica',
	            'CI' => 'Cote Divoire',
	            'HR' => 'Croatia',
	            'CU' => 'Cuba',
	            'CY' => 'Cyprus',
	            'CZ' => 'Czech Republic',
	            'DK' => 'Denmark',
	            'DJ' => 'Djibouti',
	            'DM' => 'Dominica',
	            'DO' => 'Dominican Republic',
	            'EC' => 'Ecuador',
	            'EG' => 'Egypt',
	            'SV' => 'El Salvador',
	            'GQ' => 'Equatorial Guinea',
	            'ER' => 'Eritrea',
	            'EE' => 'Estonia',
	            'ET' => 'Ethiopia',
	            'FK' => 'Falkland Islands (malvinas)',
	            'FO' => 'Faroe Islands',
	            'FJ' => 'Fiji',
	            'FI' => 'Finland',
	            'FR' => 'France',
	            'GF' => 'French Guiana',
	            'PF' => 'French Polynesia',
	            'TF' => 'French Southern Territories',
	            'GA' => 'Gabon',
	            'GM' => 'Gambia',
	            'GE' => 'Georgia',
	            'DE' => 'Germany',
	            'GH' => 'Ghana',
	            'GI' => 'Gibraltar',
	            'GR' => 'Greece',
	            'GL' => 'Greenland',
	            'GD' => 'Grenada',
	            'GP' => 'Guadeloupe',
	            'GU' => 'Guam',
	            'GT' => 'Guatemala',
	            'GG' => 'Guernsey',
	            'GN' => 'Guinea',
	            'GW' => 'Guinea-bissau',
	            'GY' => 'Guyana',
	            'HT' => 'Haiti',
	            'HM' => 'Heard Island And Mcdonald Islands',
	            'VA' => 'Holy See (vatican City State)',
	            'HN' => 'Honduras',
	            'HK' => 'Hong Kong',
	            'HU' => 'Hungary',
	            'IS' => 'Iceland',
	            'IN' => 'India',
	            'ID' => 'Indonesia',
	            'IR' => 'Iran, Islamic Republic Of',
	            'IQ' => 'Iraq',
	            'IE' => 'Ireland',
	            'IM' => 'Isle Of Man',
	            'IL' => 'Israel',
	            'IT' => 'Italy',
	            'JM' => 'Jamaica',
	            'JP' => 'Japan',
	            'JE' => 'Jersey',
	            'JO' => 'Jordan',
	            'KZ' => 'Kazakhstan',
	            'KE' => 'Kenya',
	            'KI' => 'Kiribati',
	            'KP' => 'Korea, Democratic People\'s Republic Of',
	            'KR' => 'Korea, Republic Of',
	            'KW' => 'Kuwait',
	            'KG' => 'Kyrgyzstan',
	            'LA' => 'Lao People\'s Democratic Republic',
	            'LV' => 'Latvia',
	            'LB' => 'Lebanon',
	            'LS' => 'Lesotho',
	            'LR' => 'Liberia',
	            'LY' => 'Libyan Arab Jamahiriya',
	            'LI' => 'Liechtenstein',
	            'LT' => 'Lithuania',
	            'LU' => 'Luxembourg',
	            'MO' => 'Macao',
	            'MK' => 'Macedonia, The Former Yugoslav Republic Of',
	            'MG' => 'Madagascar',
	            'MW' => 'Malawi',
	            'MY' => 'Malaysia',
	            'MV' => 'Maldives',
	            'ML' => 'Mali',
	            'MT' => 'Malta',
	            'MH' => 'Marshall Islands',
	            'MQ' => 'Martinique',
	            'MR' => 'Mauritania',
	            'MU' => 'Mauritius',
	            'YT' => 'Mayotte',
	            'MX' => 'Mexico',
	            'FM' => 'Micronesia, Federated States Of',
	            'MD' => 'Moldova, Republic Of',
	            'MC' => 'Monaco',
	            'MN' => 'Mongolia',
	            'ME' => 'Montenegro',
	            'MS' => 'Montserrat',
	            'MA' => 'Morocco',
	            'MZ' => 'Mozambique',
	            'MM' => 'Myanmar',
	            'NA' => 'Namibia',
	            'NR' => 'Nauru',
	            'NP' => 'Nepal',
	            'NL' => 'Netherlands',
	            'AN' => 'Netherlands Antilles',
	            'NC' => 'New Caledonia',
	            'NZ' => 'New Zealand',
	            'NI' => 'Nicaragua',
	            'NE' => 'Niger',
	            'NG' => 'Nigeria',
	            'NU' => 'Niue',
	            'NF' => 'Norfolk Island',
	            'MP' => 'Northern Mariana Islands',
	            'NO' => 'Norway',
	            'OM' => 'Oman',
	            'PK' => 'Pakistan',
	            'PW' => 'Palau',
	            'PS' => 'Palestinian Territory, Occupied',
	            'PA' => 'Panama',
	            'PG' => 'Papua New Guinea',
	            'PY' => 'Paraguay',
	            'PE' => 'Peru',
	            'PH' => 'Philippines',
	            'PN' => 'Pitcairn',
	            'PL' => 'Poland',
	            'PT' => 'Portugal',
	            'PR' => 'Puerto Rico',
	            'QA' => 'Qatar',
	            'RE' => 'Reunion',
	            'RO' => 'Romania',
	            'RU' => 'Russian Federation',
	            'RW' => 'Rwanda',
	            'SH' => 'Saint Helena',
	            'KN' => 'Saint Kitts And Nevis',
	            'LC' => 'Saint Lucia',
	            'PM' => 'Saint Pierre And Miquelon',
	            'VC' => 'Saint Vincent And The Grenadines',
	            'WS' => 'Samoa',
	            'SM' => 'San Marino',
	            'ST' => 'Sao Tome And Principe',
	            'SA' => 'Saudi Arabia',
	            'SN' => 'Senegal',
	            'RS' => 'Serbia',
	            'SC' => 'Seychelles',
	            'SL' => 'Sierra Leone',
	            'SG' => 'Singapore',
	            'SK' => 'Slovakia',
	            'SI' => 'Slovenia',
	            'SB' => 'Solomon Islands',
	            'SO' => 'Somalia',
	            'ZA' => 'South Africa',
	            'GS' => 'South Georgia And The South Sandwich Islands',
	            'ES' => 'Spain',
	            'LK' => 'Sri Lanka',
	            'SD' => 'Sudan',
	            'SR' => 'Suriname',
	            'SJ' => 'Svalbard And Jan Mayen',
	            'SZ' => 'Swaziland',
	            'SE' => 'Sweden',
	            'CH' => 'Switzerland',
	            'SY' => 'Syrian Arab Republic',
	            'TW' => 'Taiwan, Province Of China',
	            'TJ' => 'Tajikistan',
	            'TZ' => 'Tanzania, United Republic Of',
	            'TH' => 'Thailand',
	            'TL' => 'Timor-leste',
	            'TG' => 'Togo',
	            'TK' => 'Tokelau',
	            'TO' => 'Tonga',
	            'TT' => 'Trinidad And Tobago',
	            'TN' => 'Tunisia',
	            'TR' => 'Turkey',
	            'TM' => 'Turkmenistan',
	            'TC' => 'Turks And Caicos Islands',
	            'TV' => 'Tuvalu',
	            'UG' => 'Uganda',
	            'UA' => 'Ukraine',
	            'AE' => 'United Arab Emirates',
	            'GB' => 'United Kingdom',
	            'US' => 'United States',
	            'UM' => 'United States Minor Outlying Islands',
	            'UY' => 'Uruguay',
	            'UZ' => 'Uzbekistan',
	            'VU' => 'Vanuatu',
	            'VE' => 'Venezuela',
	            'VN' => 'Viet Nam',
	            'VG' => 'Virgin Islands, British',
	            'VI' => 'Virgin Islands, U.S.',
	            'WF' => 'Wallis And Futuna',
	            'EH' => 'Western Sahara',
	            'YE' => 'Yemen',
	            'ZM' => 'Zambia',
	            'ZW' => 'Zimbabwe'
	        );
	        if($id) {
	            if(isset($countries[$id])) {
	                return $countries[$id];
	            }
	        } else {
	            return $countries;
	        }
	    }

	////////////////////////////////////////////////////////////
	
	public function generateSlug($title = null, $id = null) {
	        if (!$title) {
	            throw new NotFoundException(__('Invalid Title'));
	        }

	        $title = strtolower($title);
	        $slug  = Inflector::slug($title, '-');

	        $conditions = array();
	        $conditions[$this->alias . '.slug'] = $slug;

	        if ($id) {
	            $conditions[$this->primaryKey. ' NOT'] = $id;
	        }

	        $total = $this->find('count', array('conditions' => $conditions, 'recursive' => -1));
	        if ($total > 0) {
	            for ($number = 2; $number > 0; $number ++) {
	                $conditions[$this->alias . '.slug'] = $slug . '-' . $number;

	                $total = $this->find('count', array('conditions' => $conditions, 'recursive' => -1));
	                if ($total == 0) {
	                    return $slug . '-' . $number;
	                }
	            }
	        }

	        return $slug;
	    }
}
