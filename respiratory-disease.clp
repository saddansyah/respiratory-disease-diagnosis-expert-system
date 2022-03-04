(defrule Bronkitis
  (disease_is Bronkitis)
  =>
  (printout t "Bronkitis" crlf)
)

(defrule is_it_Bronkitis
  (has_symptom batuk_berdahak)
  (has_symptom demam)
  (has_symptom sesak_napas)
  (has_symptom sakit_tenggorokan)
  (has_symptom nyeri_dada)
  (has_symptom penurunan_kesadaran)
  =>
  (assert (disease_is Bronkitis))
)

(defrule Laringitis
  (disease_is Laringitis)
  =>
  (printout t "Laringitis" crlf)
)

(defrule is_it_Laringitis
  (has_symptom batuk_kering)
  (has_symptom demam)
  (has_symptom sakit_tenggorokan)
  (has_symptom suara_serak)
  (has_symptom penurunan_kesadaran)
  =>
  (assert (disease_is Laringitis))
)

(defrule Laringitis_Akut
  (disease_is Laringitis_Akut)
  =>
  (printout t "Laringitis Akut" crlf)
)

(defrule is_it_Laringitis_Akut
  (disease_is Laringitis)
  (has_symptom batuk_berdarah)
  (has_symptom sesak_napas)
  (has_symptom sulit_menelan)
  =>
  (assert (disease_is Laringitis_Akut))
)

(defrule Faringitis
  (disease_is Faringitis)
  =>
  (printout t "Faringitis" crlf)
)

(defrule is_it_Faringitis
  (has_symptom sakit_kepala)
  (has_symptom demam)
  (has_symptom sakit_tenggorokan)
  (has_symptom gatal_tenggorokan)
  (has_symptom sulit_menelan)
  =>
  (assert (disease_is Faringitis))
)

(defrule Pleuristis
  (disease_is Pleuristis)
  =>
  (printout t "Pleuristis" crlf)
)

(defrule is_it_Pleuristis
  (has_symptom menggigil)
  (has_symptom demam)
  (has_symptom sakit_kepala)
  (has_symptom nafsu_makan_menurun)
  (has_symptom nyeri_dada)
  =>
  (assert (disease_is Pleuristis))
)

(defrule Rhinitis
  (disease_is Rhinitis)
  =>
  (printout t "Rhinitis" crlf)
)

(defrule is_it_Rhinitis
  (has_symptom pilek)
  (has_symptom hidung_tersumbat)
  (has_symptom mata_berair)
  (has_symptom hidung_mengeluarkan_banyak cairan)
  =>
  (assert (disease_is Rhinitis))
)

(defrule Sinusitis
  (disease_is Sinusitis)
  =>
  (printout t "Sinusitis" crlf)
)

(defrule is_it_Sinusitis
  (has_symptom pilek)
  (has_symptom hidung_tersumbat)
  (has_symptom nyeri_wajah)
  (has_symptom penurunan_penciuman)
  =>
  (assert (disease_is Sinusitis))
)

(defrule Pembesaran_Adenoid
  (disease_is Pembesaran_Adenoid)
  =>
  (printout t "Pembesaran_Adenoid" crlf)
)

(defrule is_it_Pembesaran_Adenoid
  (has_symptom pilek)
  (has_symptom hidung_tersumbat)
  (has_symptom mendengkur)
  (has_symptom bibir_pecah_pecah)
  (has_symptom mulut_kering)
  (has_symptom penurunan_penciuman)
  (has_symptom sakit_tenggorokan)
  =>
  (assert (disease_is Pembesaran_Adenoid))
)

(defrule Pneumonia
  (disease_is Pneumonia)
  =>
  (printout t "Pneumonia" crlf)
)

(defrule is_it_Pneumonia
  (has_symptom batuk_berdahak)
  (has_symptom pilek)
  (has_symptom sesak_napas)
  (has_symptom menggigil)
  (has_symptom kelelahan)
  =>
  (assert (disease_is Pneumonia))
)

(defrule Difteri
  (disease_is Difteri)
  =>
  (printout t "Difteri" crlf)
)

(defrule is_it_Difteri
  (has_symptom sakit_tenggorokan)
  (has_symptom suara_serak)
  (has_symptom batuk_berdahak)
  (has_symptom pilek)
  (has_symptom demam)
  (has_symptom menggigil)
  =>
  (assert (disease_is Difteri))
)

(defrule Asma
  (disease_is Asma)
  =>
  (printout t "Asma" crlf)
)

(defrule is_it_Asma
  (has_symptom sesak_napas)
  (has_symptom mengi)
  (has_symptom batuk_kering)
  =>
  (assert (disease_is Asma))
)

(defrule Emfisema
  (disease_is Emfisema)
  =>
  (printout t "Emfisema" crlf)
)

(defrule is_it_Emfisema
  (has_symptom sesak_napas)
  (has_symptom mengi)
  (has_symptom batuk_berdahak)
  (has_symptom sakit_kepala)
  (has_symptom kelelahan)
  =>
  (assert (disease_is Emfisema))
)






