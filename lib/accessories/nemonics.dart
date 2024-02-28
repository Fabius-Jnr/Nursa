import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


//import 'package:google_fonts/google_fonts.dart';

class MedMnemonics extends StatefulWidget {
  const MedMnemonics({Key? key}) : super(key: key);

  @override
  State<MedMnemonics> createState() => _MedMnemonicsState();
}

class _MedMnemonicsState extends State<MedMnemonics> {
  final List<Map<String, dynamic>> _allWords = [
    {'id': 1, 'name': 'A&E', 'means': 'accident and emergency '},
    {'id': 2, 'name': 'AAMI ', 'means': ' age-associated memory impairment'},
    {'id': 3, 'name': 'AB', 'means': 'abortion '},
    {'id': 4, 'name': 'Ab', 'means': 'antibody '},
    {
      'id': 5,
      'name': 'ABCDE',
      'means':
      ' airway and cervical spine, breathing, circulation, disability, exposure '
    },
    {'id': 6, 'name': 'Abd', 'means': 'abdomen/abdominal '},
    {'id': 7, 'name': 'ABG', 'means': 'arterial blood gas '},
    {'id': 8, 'name': 'ABP', 'means': ' acute bacterial prostatitis'},
    {'id': 9, 'name': 'ABT', 'means': 'antibiotic therapy '},
    {'id': 10, 'name': 'AC', 'means': '  Adriamycin and Cytoxan'},
    {'id': 11, 'name': 'Ac ', 'means': ' before meals ( ante cibum) '},
    {'id': 12, 'name': 'ACE ', 'means': ' all-cotton elastic '},
    {'id': 13, 'name': 'ACE', 'means': 'angiotensin-converting enzyme '},
    {'id': 14, 'name': 'ACLS', 'means': ' Advanced Cardiac Life Support'},
    {'id': 15, 'name': 'ACTH', 'means': ' adrenocorticotrophic hormone'},
    {'id': 16, 'name': 'AD', 'means': 'advance directive '},
    {'id': 17, 'name': 'AD', 'means': ' right ear (auricular dexter) '},
    {'id': 18, 'name': 'ADA', 'means': ' American Diabetes Association'},
    {
      'id': 19,
      'name': 'ADAMHA ',
      'means': ' Alcohol, Drug Abuse and Mental Health Administration'
    },
    {'id': 20, 'name': 'ADC ', 'means': 'AIDS dementia complex '},
    {'id': 21, 'name': 'ADH', 'means': 'antidiuretic hormone '},
    {'id': 22, 'name': 'ADL', 'means': '  activities of daily living'},
    {'id': 23, 'name': 'AEA ', 'means': 'above-the-elbow amputation '},
    {'id': 24, 'name': 'AEB', 'means': '  as evidenced by'},
    {'id': 25, 'name': 'AED', 'means': 'automated external defibrillator '},
    {'id': 26, 'name': 'AFP', 'means': 'alpha-fetoprotein '},
    {'id': 27, 'name': 'Ag', 'means': ' antigen'},
    {'id': 33, 'name': 'AGA ', 'means': ' appropriate for gestational age'},
    {'id': 28, 'name': 'AHF', 'means': 'antihaemophilic factor '},
    {'id': 29, 'name': 'AHG', 'means': 'antihaemophilic globulin '},
    {'id': 30, 'name': 'AI', 'means': 'adequate intake '},
    {
      'id': 31,
      'name': 'AICD',
      'means': ' automatic implantable cardioverter-defibrillator'
    },
    {'id': 32, 'name': 'AIDS', 'means': 'Acquired immune deficiency syndrome '},
    {'id': 34, 'name': 'AIH', 'means': 'artificial insemination '},
    {'id': 35, 'name': 'AKA', 'means': 'Above knee amputation '},
    {'id': 36, 'name': 'ALL', 'means': 'acute lymphocytic leukaemia '},
    {'id': 37, 'name': 'ALS', 'means': 'amyotrophic lateral sclerosis '},
    {'id': 38, 'name': 'ALT', 'means': 'alanineaspartate aminotransferase '},
    {'id': 39, 'name': 'AMA ', 'means': 'against medical advice '},
    {'id': 40, 'name': 'Amb', 'means': ' Ambulatory, able to walk'},
    {'id': 41, 'name': 'AML', 'means': 'acute myelogenous leukemia '},
    {'id': 42, 'name': 'Angio', 'means': 'angiogram '},
    {'id': 43, 'name': 'ANP ', 'means': 'atrial natriuretic peptide '},
    {
      'id': 44,
      'name': 'AP',
      'means': 'apical pulse; assault precautions; anterior-posterior '
    },
    {'id': 45, 'name': 'AP', 'means': 'appendectomy '},
    {
      'id': 46,
      'name': 'APGAR',
      'means':
      'A appearance (color) P pulse (heart rate) G grimace (irritability) A activity (muscle tone) R respiratory effort '
    },
    {'id': 47, 'name': 'APH', 'means': 'antepartum haemorrhage '},
    {
      'id': 48,
      'name': 'APIE',
      'means': 'assessment, plan, intervention, evaluation '
    },
    {
      'id': 49,
      'name': 'APTT',
      'means': 'activated partial thromboplastin time '
    },
    {'id': 50, 'name': 'aq', 'means': 'water '},
    {'id': 51, 'name': 'A-R', 'means': ' apical - radial (pulse) '},
    {'id': 52, 'name': 'ARC', 'means': 'American Red Cross '},
    {
      'id': 53,
      'name': 'ARDD',
      'means': '  alcohol-related developmental disability'
    },
    {
      'id': 54,
      'name': 'ARDS',
      'means': 'adult acute respiratory distress syndrome '
    },
    {
      'id': 55,
      'name': 'ARND',
      'means': 'alcohol-related neurodevelopmental disorder '
    },
    {
      'id': 56,
      'name': 'AROM',
      'means': 'active range of motion; artificial rapture of membrane '
    },
    {
      'id': 57,
      'name': 'ARRP',
      'means': 'anatomic retropubic radical prostatectomy '
    },
    {'id': 58, 'name': 'AS', 'means': 'left ear (auricular sinister) '},
    {'id': 59, 'name': 'AS ', 'means': 'sickle cell trait '},
    {'id': 60, 'name': 'ASA', 'means': 'acetylsalicyclic acid (aspirin) '},
    {'id': 61, 'name': 'AST', 'means': 'aspartate aminotransferase '},
    {'id': 62, 'name': 'ATLS', 'means': 'Advanced Trauma Life Support '},
    {'id': 63, 'name': 'ATN', 'means': 'acute tubular necrosis '},
    {'id': 64, 'name': 'ATP ', 'means': 'adenosine triphosphate '},
    {'id': 65, 'name': 'AU', 'means': 'both ears (auricular utro) '},
    {'id': 66, 'name': 'AV', 'means': 'atrioventricular '},
    {
      'id': 67,
      'name': 'AVPU',
      'means': 'Alert, Verbal, Pain Response, Unresponsive '
    },
    {'id': 68, 'name': 'B/P', 'means': 'blood pressure '},
    {'id': 69, 'name': 'BA', 'means': 'bowel action '},
    {'id': 70, 'name': 'Ba', 'means': 'barium '},
    {'id': 71, 'name': 'BBB', 'means': '  blood-brain barrier'},
    {'id': 72, 'name': 'BBP ', 'means': 'blood-borne pathogens '},
    {'id': 73, 'name': 'BC', 'means': 'basal cell carcinoma '},
    {
      'id': 74,
      'name': 'BCG',
      'means': '  vaccine Bacilli Calmette-guerin vaccine'
    },
    {'id': 75, 'name': 'BCLS', 'means': 'Basic Cardiac Life Support '},
    {'id': 76, 'name': 'BCP', 'means': 'birth control pil '},
    {'id': 77, 'name': 'bd/ BD', 'means': 'twice a day '},
    {'id': 78, 'name': 'BE', 'means': ' barium enema x-ray '},
    {'id': 79, 'name': 'BEA ', 'means': 'bellow-the-elbow amputation '},
    {'id': 80, 'name': 'BGL', 'means': 'blood glucose level '},
    {'id': 81, 'name': 'BGLs ', 'means': 'blood glucose levels '},
    {'id': 82, 'name': 'bid', 'means': ' twice a day'},
    {
      'id': 83,
      'name': 'BIDS',
      'means': 'bedtime insulin and daytime sulfonylureas '
    },
    {'id': 84, 'name': 'BK', 'means': ' below knee'},
    {'id': 85, 'name': 'BKA', 'means': 'below knee amputation '},
    {'id': 86, 'name': 'BLL', 'means': 'blood lead level '},
    {'id': 87, 'name': 'BLS', 'means': ' Basic Life Support'},
    {'id': 88, 'name': 'BMI', 'means': 'body mass index '},
    {'id': 89, 'name': 'BMR ', 'means': 'basal metabolic rate '},
    {'id': 90, 'name': 'BMT', 'means': 'bone marrow transplant '},
    {'id': 91, 'name': 'BNO ', 'means': 'bowels not opened '},
    {'id': 92, 'name': 'BO', 'means': 'bowels opened '},
    {'id': 93, 'name': 'BOA', 'means': 'born out of asepsis '},
    {'id': 94, 'name': 'BP ', 'means': '  blood pressure'},
    {'id': 95, 'name': 'BPAD', 'means': 'bipolar affective disorder '},
    {'id': 96, 'name': 'BPD', 'means': 'bipolar disorder '},
    {'id': 97, 'name': 'BPRS', 'means': '- Brief Psychiatric Rating Scale '},
    {'id': 98, 'name': 'BRM ', 'means': 'biologic response modifiers '},
    {'id': 99, 'name': 'BSE', 'means': ' breast self-examination '},
    {'id': 100, 'name': 'BSL ', 'means': 'blood sugar level '},
    {'id': 101, 'name': 'BUN', 'means': 'blood urine nitrogen '},
    {'id': 102, 'name': 'BWO', 'means': ' bowel well opened '},
    {'id': 104, 'name': 'C', 'means': ' Celsius '},
    {'id': 105, 'name': 'C/O', 'means': 'complaint of '},
    {'id': 106, 'name': 'Ca', 'means': 'cancer/calcium '},
    {'id': 107, 'name': 'CABG', 'means': 'coronary artery bypass grafting '},
    {'id': 108, 'name': 'CAD', 'means': 'coronary artery disease '},
    {'id': 109, 'name': 'cap', 'means': 'capsule '},
    {
      'id': 110,
      'name': 'CAPD',
      'means': 'continuous ambulatory peritoneal dialysis '
    },
    {'id': 111, 'name': 'Card', 'means': 'cardiac '},
    {'id': 112, 'name': 'CAT', 'means': 'computerized adaptive testing '},
    {'id': 113, 'name': 'CAT', 'means': 'computerized axial tomography '},
    {'id': 114, 'name': 'Cath', 'means': ' catheter '},
    {'id': 115, 'name': 'CBC ', 'means': ' complete blood count '},
    {'id': 116, 'name': 'CBE', 'means': 'charting by exception '},
    {'id': 117, 'name': 'CBP ', 'means': 'chronic bacterial prostatitis '},
    {'id': 118, 'name': 'CC', 'means': 'chief complaint '},
    {'id': 119, 'name': 'cc', 'means': 'cubic centimeter '},
    {'id': 120, 'name': 'CCF', 'means': 'congestive cardiac failure '},
    {'id': 121, 'name': 'CCP', 'means': 'clinical care pathway '},
    {'id': 122, 'name': 'CCU', 'means': ' coronary care unit'},
    {'id': 123, 'name': 'CD', 'means': 'chemical dependency '},
    {'id': 124, 'name': 'CD4', 'means': 'helper T lymphocytes '},
    {
      'id': 125,
      'name': 'CEA',
      'means': 'carcinoembryonic antigen; cultured epithelial autografts '
    },
    {'id': 126, 'name': 'CEH', 'means': ' continuing education hour'},
    {'id': 127, 'name': 'CEU', 'means': 'continuing education unit '},
    {'id': 128, 'name': 'CF', 'means': ' cystic fibrosis'},
    {'id': 129, 'name': 'CHC', 'means': '  community health center'},
    {'id': 130, 'name': 'CHF', 'means': '  congestive heart failure'},
    {'id': 131, 'name': 'CHHA', 'means': 'Certified Home Health Aide '},
    {'id': 132, 'name': 'CHO ', 'means': ' carbohydrates'},
    {'id': 133, 'name': 'CIC', 'means': 'crisis intervention center '},
    {'id': 134, 'name': 'CJD', 'means': 'Creutzfeldt- Jakob disease '},
    {'id': 135, 'name': 'CLL', 'means': ' chronic lymphocytic leukemia'},
    {'id': 136, 'name': 'CLTC', 'means': 'Citizen for Long-Term Care '},
    {'id': 137, 'name': 'CM', 'means': 'care/case manager '},
    {'id': 138, 'name': 'CMF', 'means': 'Cytoxan, methotrexate, fluorouracil '},
    {'id': 139, 'name': 'CMG', 'means': 'cystometrogram '},
    {'id': 140, 'name': 'CML', 'means': ' chronic myelogenous leukemia'},
    {
      'id': 141,
      'name': 'CMMS',
      'means': 'Center for Medicare and Medicaid Services '
    },
    {
      'id': 142,
      'name': 'CMS',
      'means': 'color, motion, sensitivity; circulation, mobility, sensation '
    },
    {'id': 143, 'name': 'CMV', 'means': 'cytomegalovirus '},
    {'id': 144, 'name': 'CNC', 'means': ' clinical nurse consultant '},
    {'id': 145, 'name': 'CNM', 'means': 'Certified Nurse Midwife '},
    {
      'id': 146,
      'name': 'CNO ',
      'means': 'Community Nursing Organization; Chief Nursing Officer '
    },
    {'id': 147, 'name': 'CNS', 'means': 'central nervous system '},
    {'id': 148, 'name': 'CO', 'means': 'cardiac output '},
    {
      'id': 149,
      'name': 'COA',
      'means': '  children of alcoholics; coarctation of the aorta'
    },
    {'id': 150, 'name': 'COAs', 'means': 'children of alcoholic '},
    {'id': 151, 'name': 'COLD ', 'means': ' chronic obstructive lung disease'},
    {'id': 152, 'name': 'Consult', 'means': ' consultation '},
    {
      'id': 153,
      'name': 'COPD',
      'means': 'chronic obstructive pulmonary disease '
    },
    {
      'id': 154,
      'name': 'COTA',
      'means': ' Certified Occupational Therapy Assistant '
    },
    {'id': 155, 'name': 'CPD', 'means': ' cephalopelvic disproportion '},
    {'id': 156, 'name': 'CPK', 'means': 'creatinine phosphokinase '},
    {'id': 157, 'name': 'CPM ', 'means': 'continuous passive motion '},
    {'id': 158, 'name': 'CPR', 'means': 'cardiopulmonary resuscitation '},
    {'id': 159, 'name': 'CPT', 'means': 'chest physiotherapy '},
    {
      'id': 160,
      'name': 'CQI',
      'means': 'contiguous (continuous) quality improvement '
    },
    {'id': 161, 'name': 'CRH', 'means': 'corticotropin-releasing hormone '},
    {
      'id': 162,
      'name': 'CRNA',
      'means': 'Certified Registered Nurse Anesthetist '
    },
    {'id': 163, 'name': 'CRNH', 'means': 'Certified Registered Nurse-Hospice '},
    {'id': 164, 'name': 'CRP', 'means': ' C-reactive protein '},
    {'id': 165, 'name': 'Cryo', 'means': ' cryoprecipitate '},
    {
      'id': 166,
      'name': 'CS',
      'means': 'complete stroke; cardiac sphincter; caesarean section '
    },
    {'id': 167, 'name': 'CSF', 'means': 'cerebrospinal fluid '},
    {'id': 168, 'name': 'CT ', 'means': 'computed tomography '},
    {
      'id': 169,
      'name': 'CT scan ',
      'means': ' computerised axial tomography scan '
    },
    {'id': 170, 'name': 'CUC', 'means': ' chronic ulcerative '},
    {'id': 171, 'name': 'CVA', 'means': 'cerebro-vascular accident '},
    {'id': 172, 'name': 'CVP', 'means': ' central venous pressure '},
    {'id': 173, 'name': 'CVS', 'means': ' chronic villus sampling'},
    {
      'id': 174,
      'name': 'CWMS ',
      'means': '  colour, warmth, movement, sensation'
    },
    {'id': 175, 'name': 'CXR', 'means': 'chest X –ray '},
    {'id': 176, 'name': 'D & C', 'means': 'dilatation and curettage '},
    {
      'id': 177,
      'name': 'DAPE',
      'means': ' data, assessment, plan, evaluation '
    },
    {'id': 178, 'name': 'DARE', 'means': ' data, action, response, education '},
    {'id': 179, 'name': 'DAT', 'means': 'diet as tolerated '},
    {'id': 180, 'name': 'DBP/dBP ', 'means': 'diastolic blood pressure '},
    {'id': 181, 'name': 'DCT', 'means': ' distal convoluted tubule '},
    {
      'id': 182,
      'name': 'DDST ',
      'means': ' Denver Developmental Screening Test '
    },
    {'id': 183, 'name': 'DERM ', 'means': ' dermatology '},
    {'id': 184, 'name': 'DES ', 'means': ' diethylstilbestrol'},
    {
      'id': 185,
      'name': 'DIC',
      'means': ' disseminated intravascular coagulation '
    },
    {
      'id': 186,
      'name': 'DISCUS ',
      'means': ' Dyskinesia Identification System-Condensed User '
    },
    {'id': 187, 'name': 'DJD', 'means': ' degenerative joint disease '},
    {'id': 188, 'name': 'DKA ', 'means': ' diabetic ketoacidosis '},
    {'id': 189, 'name': 'dL ', 'means': ' deciliter '},
    {'id': 190, 'name': 'DM ', 'means': ' Diabetes mellitus '},
    {'id': 191, 'name': 'DME ', 'means': ' Durable Medical Equipment'},
    {'id': 192, 'name': 'DMSA - 2, 3', 'means': 'dimercaptosuccinic acid'},
    {'id': 193, 'name': 'DNH ', 'means': ' do not hospitalize '},
    {'id': 194, 'name': 'DNI', 'means': 'do not intubate '},
    {'id': 195, 'name': 'DNR', 'means': ' do not resuscitate '},
    {'id': 196, 'name': 'DOA', 'means': ' dead on arrival '},
    {'id': 197, 'name': 'DOB', 'means': ' date of birth '},
    {'id': 198, 'name': 'DPC', 'means': 'delayed primary closure '},
    {'id': 199, 'name': 'DPM', 'means': 'drop per minutes '},
    {'id': 200, 'name': 'Dr', 'means': 'doctor/medical officer'},
    {'id': 201, 'name': 'DRF ', 'means': ' drip rate factor'},
    {'id': 202, 'name': 'DRG', 'means': 'diagnosis-related group '},
    {'id': 203, 'name': 'DRI', 'means': ' dietary reference intake '},
    {'id': 204, 'name': 'DSH', 'means': ' deliberate self- harm '},
    {
      'id': 205,
      'name': 'DSM-IV',
      'means':
      ' Diagnostic and Statistical Manual of Mental Disorders, Revision IV'
    },
    {'id': 206, 'name': 'DT', 'means': 'diphtheria and tetanus toxoids'},
    {'id': 207, 'name': 'DTAD', 'means': 'drain tube attachment device '},
    {
      'id': 208,
      'name': 'DtaP',
      'means': 'diphtheria, tetanus, acellular pertussis '
    },
    {
      'id': 209,
      'name': 'DTP ',
      'means': 'diphtheria and tetanus toxoids and pertussis vaccine '
    },
    {'id': 210, 'name': 'DTs', 'means': 'delirium tremens'},
    {'id': 211, 'name': 'DVT', 'means': 'deep vein thrombosis '},
    {'id': 212, 'name': 'Dx (diag)', 'means': 'diagnosis'},
    {'id': 213, 'name': 'EAR', 'means': 'estimated average requirement'},
    {'id': 214, 'name': 'EB virus', 'means': 'Epstein – Barr virus '},
    {'id': 215, 'name': 'EBM', 'means': 'expressed breast milk '},
    {'id': 216, 'name': 'EC', 'means': 'emergency contraception'},
    {'id': 217, 'name': 'EC', 'means': 'enteric coat '},
    {
      'id': 218,
      'name': 'ECF',
      'means': ' extended care facility; extracellular fluid '
    },
    {'id': 219, 'name': 'ECG ', 'means': 'electrocardiogram '},
    {'id': 220, 'name': 'ECT', 'means': 'Electroconvulsive therapy'},
    {
      'id': 221,
      'name': 'ED',
      'means': 'emergency department; erectile dysfunction '
    },
    {'id': 222, 'name': 'EDC', 'means': 'estimated date of confinement '},
    {'id': 223, 'name': 'EEG', 'means': 'electroenocephalogram '},
    {'id': 224, 'name': 'EGH', 'means': 'oesophagogastroduodenoscopy '},
    {
      'id': 225,
      'name': 'e-IPV',
      'means': 'enhanced potency inactivated poliovirus vaccine '
    },
    {
      'id': 226,
      'name': 'ELISA',
      'means': 'enzyme-linked immunosorbent  assay '
    },
    {'id': 227, 'name': 'EMB', 'means': 'ethambutol'},
    {'id': 228, 'name': 'Emerg', 'means': 'emergency department '},
    {'id': 229, 'name': 'EMG', 'means': 'electromyogram '},
    {'id': 230, 'name': 'ENG', 'means': 'electronystagmography '},
    {'id': 231, 'name': 'ENT', 'means': 'ear, nose and throat '},
    {'id': 232, 'name': 'EP', 'means': 'escape (elopement) precautions '},
    {'id': 233, 'name': 'EPSE', 'means': 'extrapyramidal side effects '},
    {
      'id': 234,
      'name': 'ERCP',
      'means': 'endoscopic retrograde cholangiopancreatography '
    },
    {'id': 235, 'name': 'ERG', 'means': 'electroretinogram '},
    {'id': 236, 'name': 'ERT', 'means': 'estrogen replacement therapy '},
    {'id': 237, 'name': 'ERV', 'means': 'expiratory reserve volume '},
    {'id': 238, 'name': 'ESP', 'means': 'extrasensory perception'},
    {'id': 239, 'name': 'ESR', 'means': 'erythrocyte sedimentation rate '},
    {'id': 240, 'name': 'ESRD End ', 'means': 'stage renal disease'},
    {
      'id': 241,
      'name': 'ESWL',
      'means': 'extracorporeal shock wave lithotripsy '
    },
    {'id': 242, 'name': 'ET', 'means': 'enterostomal therapist '},
    {'id': 243, 'name': 'ETOH', 'means': 'ethanol (alcohol) '},
    {'id': 244, 'name': 'ETOH W/D', 'means': 'alcohol withdrawal '},
    {'id': 245, 'name': 'EUA', 'means': 'examination under anaesthetic '},
    {'id': 246, 'name': 'F', 'means': 'Fahrenheit '},
    {
      'id': 247,
      'name': 'FADL',
      'means': 'functional activities of daily living'
    },
    {'id': 248, 'name': 'FAM', 'means': 'fertility awareness method '},
    {'id': 249, 'name': 'FAS', 'means': 'fetal alcohol syndrome '},
    {
      'id': 250,
      'name': 'FBC',
      'means': 'fluid balance chart or full blood count '
    },
    {'id': 251, 'name': 'FBP', 'means': 'fetal biophysical profile '},
    {'id': 252, 'name': 'FBS ', 'means': 'fasting blood sugar '},
    {'id': 253, 'name': 'Fe ', 'means': 'iron '},
    {'id': 254, 'name': 'FES', 'means': ' functional electrical stimulation '},
    {'id': 255, 'name': 'FF', 'means': ' forced feeding or forced fluids '},
    {'id': 256, 'name': 'FFP', 'means': ' fresh-frozen plasma '},
    {'id': 257, 'name': 'FHC', 'means': 'family health center '},
    {'id': 258, 'name': 'FHT', 'means': 'fetal heart tones '},
    {'id': 259, 'name': 'FPG', 'means': ' fasting plasma glucose '},
    {'id': 260, 'name': 'FRC', 'means': 'functional residual capacity '},
    {'id': 261, 'name': 'FRV', 'means': 'functional residue volume '},
    {'id': 262, 'name': 'FSH Follicle', 'means': 'stimulating hormone '},
    {'id': 263, 'name': 'FTT', 'means': ' failure to thrive '},
    {'id': 264, 'name': 'FVD', 'means': 'fluid volume deficit '},
    {'id': 265, 'name': 'FVE', 'means': 'fluid volume excess '},
    {'id': 266, 'name': 'FWB', 'means': 'full weight bearing '},
    {'id': 267, 'name': 'FWD ', 'means': ' full ward diet'},
    {'id': 268, 'name': 'Fx', 'means': 'fracture '},
    {'id': 269, 'name': 'G', 'means': 'gauze '},
    {'id': 270, 'name': 'G6PD', 'means': 'glucose 6-phosphodehydrogenase '},
    {'id': 271, 'name': 'GA', 'means': 'general anaesthesia '},
    {
      'id': 272,
      'name': 'GABHS',
      'means': ' group A beta-hemolytic streptococcus '
    },
    {'id': 273, 'name': 'GCS', 'means': 'Glasgow Coma Scale '},
    {'id': 274, 'name': 'GDM', 'means': 'gestational diabetes mellitus '},
    {'id': 275, 'name': 'GERD', 'means': 'gastroesophageal reflux disease '},
    {'id': 276, 'name': 'GERI', 'means': 'geriatrics '},
    {'id': 277, 'name': 'GFR', 'means': ' glomerulofiltration rate '},
    {'id': 278, 'name': 'GH', 'means': 'growth hormone '},
    {'id': 279, 'name': 'GI', 'means': ' gastrointestinal '},
    {'id': 280, 'name': 'GIT', 'means': 'gastrointestinal tract '},
    {'id': 281, 'name': 'GP', 'means': 'general practitioner '},
    {'id': 282, 'name': 'GT', 'means': 'gastrostomy '},
    {'id': 283, 'name': 'GTN', 'means': '  glyceryl trinitrate'},
    {'id': 284, 'name': 'GTT', 'means': 'glucose tolerance test '},
    {'id': 285, 'name': 'GV', 'means': 'Symbol for gray '},
    {'id': 286, 'name': 'GVH', 'means': 'Graft - versus host disease '},
    {'id': 287, 'name': 'GYNE', 'means': ' gynaecology'},
    {'id': 288, 'name': 'HAI', 'means': 'Hospital - acquired infection '},
    {'id': 289, 'name': 'Hb', 'means': 'haemoglobin '},
    {'id': 290, 'name': 'HCG', 'means': ' Human chorionic gonadotrophin '},
    {'id': 291, 'name': 'HCL', 'means': 'Hydrochloric acid '},
    {'id': 292, 'name': 'hct', 'means': ' hematocrit '},
    {'id': 293, 'name': 'HDU', 'means': 'high dependency unit '},
    {'id': 294, 'name': 'hgb', 'means': 'hemoglobin '},
    {'id': 295, 'name': 'HIV', 'means': 'Human immunodeficiency virus '},
    {'id': 296, 'name': 'HNPU', 'means': 'has not passed urine '},
    {'id': 297, 'name': 'HRT', 'means': 'Hormone replacement therapy '},
    {'id': 298, 'name': 'hs', 'means': 'hour of sleep, bedtime '},
    {'id': 299, 'name': 'ICN', 'means': '  Infection control nurse'},
    {'id': 300, 'name': 'ICP', 'means': 'Intracranial pressure '},
    {
      'id': 301,
      'name': 'ICSH',
      'means': 'Interstitial cell stimulating hormone '
    },
    {'id': 302, 'name': 'ICU', 'means': 'Intensive care unit '},
    {'id': 303, 'name': 'ID', 'means': 'intradermal '},
    {
      'id': 304,
      'name': 'ID band',
      'means': 'patient identification band/bracelet '
    },
    {'id': 305, 'name': 'IDC', 'means': ' indwelling catheter'},
    {
      'id': 306,
      'name': 'IDDM',
      'means': 'insulin-dependent diabetes mellitus '
    },
    {'id': 307, 'name': 'IM', 'means': 'intramuscular '},
    {'id': 308, 'name': 'IMI', 'means': 'intramuscular injection '},
    {'id': 309, 'name': 'IMV', 'means': 'Intermittent mandatory ventilation '},
    {'id': 310, 'name': 'INR', 'means': 'international normalised ratio '},
    {
      'id': 311,
      'name': 'IPAV',
      'means': ' Intermittent positive airway ventilation'
    },
    {'id': 312, 'name': 'IQ', 'means': ' Intelligence quotient '},
    {'id': 313, 'name': 'Isol', 'means': ' isolation '},
    {'id': 314, 'name': 'ISQ', 'means': 'in status quo/remain the same '},
    {
      'id': 315,
      'name': 'ITP',
      'means': 'Idiopathic - thrombocytopenic purpura '
    },
    {'id': 316, 'name': 'ITU', 'means': 'Intensive therapy unit '},
    {'id': 317, 'name': 'IUCD', 'means': ' Intrauterine contraceptive device '},
    {'id': 318, 'name': 'IV', 'means': 'intravenous '},
    {'id': 319, 'name': 'IV Morph', 'means': 'intravenous morphine '},
    {'id': 320, 'name': 'IVABs', 'means': 'intravenous antibiotics '},
    {'id': 321, 'name': 'IVF', 'means': 'Invitro fertilization '},
    {'id': 322, 'name': 'IVF', 'means': '  intravenous fluids'},
    {'id': 323, 'name': 'IVI', 'means': 'intravenous injection '},
    {'id': 324, 'name': 'IVP', 'means': 'Intra venous pyelography '},
    {'id': 325, 'name': 'IVPB', 'means': ' intravenous piggyback'},
    {'id': 326, 'name': 'IVT', 'means': ' intravenous therapy'},
    {'id': 327, 'name': 'IVU', 'means': 'Intravenous urography '},
    {'id': 328, 'name': 'JVP', 'means': 'jugular venous pressure '},
    {'id': 329, 'name': 'Kg', 'means': 'kilogram '},
    {'id': 330, 'name': 'KVO', 'means': 'keep veins open '},
    {'id': 331, 'name': 'L&S BP', 'means': 'lying & standing blood pressure '},
    {'id': 332, 'name': 'L/min', 'means': ' litres per minute '},
    {'id': 333, 'name': 'LA', 'means': ' local anaesthetic '},
    {
      'id': 334,
      'name': 'LAD',
      'means': 'left anterior descending (coronary artery) '
    },
    {'id': 335, 'name': 'Lat', 'means': 'lateral '},
    {'id': 336, 'name': 'LE', 'means': ' Lupus erythematosus'},
    {'id': 337, 'name': 'LFT', 'means': 'liver function test '},
    {'id': 338, 'name': 'LH', 'means': ' Luteinizing hormone '},
    {'id': 339, 'name': 'LL', 'means': 'lower lobe '},
    {'id': 340, 'name': 'LLQ', 'means': 'left lower quadrant '},
    {'id': 341, 'name': 'LMO', 'means': 'local medical officer '},
    {'id': 342, 'name': 'LMP', 'means': 'last menstrual period '},
    {'id': 343, 'name': 'LOA', 'means': 'Left occipito anterior '},
    {'id': 344, 'name': 'LOC', 'means': 'loss of consciousness '},
    {'id': 345, 'name': 'LOP', 'means': ' Left occipito posterior'},
    {'id': 346, 'name': 'LP', 'means': 'lumbar puncture '},
    {'id': 347, 'name': 'LUO', 'means': 'left upper quadrant '},
    {
      'id': 348,
      'name': 'MC&S',
      'means': ' microscopy, culture and sensitivity (tests) '
    },
    {'id': 349, 'name': 'Mcg', 'means': 'micrograms '},
    {
      'id': 350,
      'name': 'MCHC',
      'means': 'Corpuscular haemoglobin concentration '
    },
    {'id': 351, 'name': 'MCV', 'means': ' Corpuscular volume '},
    {'id': 352, 'name': 'ME', 'means': ' Myalgic encephalomyelitis '},
    {'id': 353, 'name': 'Meds', 'means': ' medications'},
    {'id': 354, 'name': 'MI', 'means': ' myocardial infarction'},
    {'id': 355, 'name': 'MLNS', 'means': 'Mucocutaneous lymph node syndrome '},
    {'id': 356, 'name': 'mm Hg', 'means': ' millimetres of mercury '},
    {'id': 357, 'name': 'mmol', 'means': 'millimole/millimoles '},
    {'id': 358, 'name': 'MMR', 'means': 'Measles mumps rubella vaccine '},
    {
      'id': 359,
      'name': 'MODS',
      'means': 'Multiple organ dysfunction syndrome '
    },
    {'id': 360, 'name': 'MRI', 'means': 'Magnetic resonance imaging '},
    {
      'id': 361,
      'name': 'MRSA',
      'means': 'Methicillin - resistant staphylococcus aureus '
    },
    {'id': 362, 'name': 'MS', 'means': ' multiple sclerosis '},
    {'id': 363, 'name': 'MSSU ', 'means': ' midstream specimen of urine'},
    {'id': 364, 'name': 'MVA', 'means': ' motor vehicle accident '},
    {'id': 365, 'name': 'N/A', 'means': ' not application '},
    {'id': 366, 'name': 'N/S', 'means': 'normal saline '},
    {'id': 367, 'name': 'NAD', 'means': ' no abnormalities detected '},
    {'id': 368, 'name': 'NAI', 'means': ' Non - accidental injury '},
    {
      'id': 369,
      'name': 'NANDA',
      'means': 'North American nursing diagnosis association '
    },
    {'id': 370, 'name': 'NCP', 'means': ' nursing care plan '},
    {'id': 371, 'name': 'Nebs', 'means': 'nebuliser '},
    {'id': 372, 'name': 'NEC', 'means': ' Necrotizing enterocolitis '},
    {'id': 373, 'name': 'Neuro', 'means': 'neurological '},
    {'id': 374, 'name': 'NFO', 'means': 'no further order '},
    {
      'id': 375,
      'name': 'NFR',
      'means': 'not for resuscitation (do not resuscitation) '
    },
    {'id': 376, 'name': 'NG', 'means': 'nasogastric '},
    {'id': 377, 'name': 'NGT', 'means': 'nasogastric tube '},
    {'id': 378, 'name': 'NJ', 'means': 'nasojejunal '},
    {'id': 379, 'name': 'NNT', 'means': 'Numbers needed to treat '},
    {'id': 380, 'name': 'NOF', 'means': 'fractured neck of femur '},
    {'id': 381, 'name': 'NPO', 'means': 'nothing by mouth '},
    {
      'id': 382,
      'name': 'NSAIDS',
      'means': 'Non - steroidal anti - inflammatory drugs '
    },
    {'id': 383, 'name': 'NSU', 'means': ' Non - specific urethritis '},
    {'id': 384, 'name': 'O/A', 'means': 'on admission '},
    {'id': 385, 'name': 'O2 sats', 'means': 'oxygen saturation '},
    {'id': 386, 'name': 'Obs', 'means': ' observation/vital signs '},
    {'id': 387, 'name': 'OD', 'means': 'right eye (oculus dexter) '},
    {'id': 388, 'name': 'OE', 'means': 'on examination '},
    {'id': 389, 'name': 'oint', 'means': ' ointment '},
    {'id': 390, 'name': 'Op', 'means': 'operation '},
    {'id': 391, 'name': 'OPD', 'means': 'outpatient’s department '},
    {'id': 392, 'name': 'OS', 'means': ' left eye (oculus sinister)'},
    {'id': 393, 'name': 'OT', 'means': 'occupational therapy '},
    {'id': 394, 'name': 'OTC', 'means': ' over the counter '},
    {'id': 395, 'name': 'OU', 'means': 'both eyes (oculus utro) '},
    {'id': 396, 'name': 'P', 'means': 'pulse '},
    {'id': 397, 'name': 'PA', 'means': 'per axilla '},
    {'id': 398, 'name': 'PAC', 'means': ' pressure area care '},
    {'id': 399, 'name': 'PACT', 'means': 'Prescribing analyses and cost '},
    {'id': 400, 'name': 'PAR', 'means': 'postanesthesia room '},
    {'id': 401, 'name': 'pc', 'means': 'after meals(post cibum) '},
    {'id': 402, 'name': 'PCA', 'means': 'patient control analgesia '},
    {'id': 403, 'name': 'PE', 'means': 'pulmonary embolism '},
    {'id': 404, 'name': 'PEFR', 'means': 'peak expiratory flow rate '},
    {'id': 405, 'name': 'PET', 'means': ' Positron emission tomography'},
    {'id': 406, 'name': 'Physio', 'means': 'physiotherapy '},
    {'id': 407, 'name': 'PICU', 'means': 'Paediatric intensive care unit '},
    {'id': 408, 'name': 'PID', 'means': 'pelvic inflammatory disease '},
    {'id': 409, 'name': 'PID', 'means': 'Prolapse of an intervertebral disc '},
    {'id': 410, 'name': 'PKU', 'means': ' Phenylketonuria '},
    {'id': 411, 'name': 'pm', 'means': 'after midday/before midnight '},
    {'id': 412, 'name': 'PM', 'means': 'post-mortem '},
    {'id': 413, 'name': 'PMHx', 'means': 'past medical history '},
    {'id': 414, 'name': 'PMT', 'means': 'premenstrual tension '},
    {'id': 415, 'name': 'POP', 'means': 'plaster of paris '},
    {'id': 416, 'name': 'Post-op', 'means': ' post-operative '},
    {'id': 417, 'name': 'pr', 'means': ' per rectal '},
    {'id': 418, 'name': 'Pt', 'means': ' patient'},
    {'id': 419, 'name': 'PT', 'means': 'prothrombin time '},
    {'id': 420, 'name': 'PT', 'means': 'physiotherapy '},
    {'id': 421, 'name': 'PTT', 'means': ' partial prothrombin time '},
    {'id': 422, 'name': 'PV', 'means': '  per vagina'},
    {'id': 423, 'name': 'PVD', 'means': 'peripheral vascular disease '},
    {'id': 424, 'name': 'PWB', 'means': 'partial weight bearing '},
    {'id': 425, 'name': 'q', 'means': ' every'},
    {'id': 426, 'name': 'QA', 'means': 'quality assurance '},
    {'id': 427, 'name': 'QALY', 'means': ' Quality adjusted life year '},
    {'id': 428, 'name': 'qd', 'means': 'every day '},
    {'id': 429, 'name': 'RAI', 'means': ' Relatives assessment interview '},
    {'id': 430, 'name': 'RBC', 'means': 'red blood cells/ red blood count '},
    {'id': 431, 'name': 'Rehab', 'means': ' rehabilitation '},
    {
      'id': 432,
      'name': 'REHAB',
      'means': 'Rehabilitation evaluation of hall and baker '
    },
    {'id': 433, 'name': 'REM', 'means': 'Rapid eye movement '},
    {'id': 434, 'name': 'RFT', 'means': 'renal function test '},
    {'id': 435, 'name': 'RIB', 'means': ' rest in bed '},
    {'id': 436, 'name': 'RLL', 'means': '  right lower lobe'},
    {'id': 437, 'name': 'RLQ', 'means': ' right lower quadrant '},
    {'id': 438, 'name': 'RMO', 'means': 'resident medical officer '},
    {'id': 439, 'name': 'ROM', 'means': 'range of movement '},
    {'id': 440, 'name': 'RSI', 'means': ' Repetitive strain injury '},
    {'id': 441, 'name': 'RTW', 'means': 'return to ward '},
    {'id': 442, 'name': 'RUQ', 'means': ' right upper quadrant'},
    {'id': 443, 'name': 'Rx', 'means': 'treatment/orders/prescription '},
    {'id': 444, 'name': 'S/S', 'means': ' signs and symptoms'},
    {
      'id': 445,
      'name': 'SADS',
      'means': 'Seasonal affective disorder syndrome '
    },
    {'id': 446, 'name': 'SARS', 'means': 'severe acute respiratory syndrome '},
    {'id': 447, 'name': 'SBP', 'means': ' systolic blood pressure '},
    {'id': 448, 'name': 'SC', 'means': ' subcutaneous'},
    {'id': 449, 'name': 'SCC', 'means': 'subcutaneous cell carcinoma '},
    {'id': 450, 'name': 'SG', 'means': 'specific gravity '},
    {'id': 451, 'name': 'SGA', 'means': ' Small for gestational age '},
    {
      'id': 452,
      'name': 'SGPT',
      'means': 'Serum glutamic - pyruvic transaminase '
    },
    {'id': 453, 'name': 'SHA', 'means': 'Strategic health authority '},
    {'id': 454, 'name': 'SIDS', 'means': ' sudden infant death syndrome'},
    {'id': 455, 'name': 'SL, sublin', 'means': 'sublingual under the tongue '},
    {'id': 456, 'name': 'SOB', 'means': ' shortness of breath '},
    {'id': 457, 'name': 'sol ', 'means': 'solution '},
    {'id': 458, 'name': 'SOOB', 'means': ' sit out of bed '},
    {'id': 459, 'name': 'SPC', 'means': 'Statistical process control '},
    {'id': 460, 'name': 'sq', 'means': 'subcutaneous '},
    {'id': 461, 'name': 'SR', 'means': 'sustained release '},
    {'id': 462, 'name': 'STD', 'means': 'sexually transmitted disease '},
    {'id': 463, 'name': 'SUI', 'means': 'Serious untoward incident '},
    {'id': 464, 'name': 'sup', 'means': ' suppository'},
    {'id': 465, 'name': 'susp', 'means': 'suspension'},
    {'id': 466, 'name': 'T&A', 'means': 'tonsillectomy and adenoidectomy '},
    {'id': 467, 'name': 'T, temp', 'means': 'temperature '},
    {'id': 468, 'name': 'Tab', 'means': 'tablet '},
    {'id': 469, 'name': 'TB ', 'means': 'tuberculosis '},
    {'id': 470, 'name': 'THR', 'means': 'total hip replacement '},
    {'id': 471, 'name': 'TIA', 'means': 'transient ischaemic attack '},
    {'id': 472, 'name': 'TKR', 'means': ' total knee replacement '},
    {'id': 473, 'name': 'TPN', 'means': 'Total parenteral nutrition '},
    {'id': 474, 'name': 'TPR', 'means': 'temperature, pulse, respiration '},
    {'id': 475, 'name': 'Tr', 'means': ' tincture '},
    {'id': 476, 'name': 'TSH', 'means': ' thyroid stimulating hormone'},
    {
      'id': 477,
      'name': 'TURP',
      'means': 'trans urethral resection of the prostate '
    },
    {'id': 478, 'name': 'U&E', 'means': ' urea and electrolytes '},
    {'id': 479, 'name': 'U/A', 'means': 'urinalysis '},
    {'id': 480, 'name': 'UDB ', 'means': 'urinary drainage bag '},
    {'id': 481, 'name': 'ULQ', 'means': ' upper left quadrant'},
    {
      'id': 482,
      'name': 'UR',
      'means': 'unit record, patient record (UR number) '
    },
    {'id': 483, 'name': 'URQ', 'means': 'upper right quadrant '},
    {'id': 484, 'name': 'URTI', 'means': 'upper respiratory tract infection '},
    {'id': 485, 'name': 'UTI', 'means': 'urinary tract infection '},
    {'id': 486, 'name': 'UV', 'means': 'ultra violet '},
    {'id': 487, 'name': 'VD ', 'means': 'venereal disease '},
    {'id': 488, 'name': 'Vit K', 'means': 'vitamin K '},
    {'id': 489, 'name': 'VO', 'means': 'verbal order '},
    {'id': 490, 'name': 'VS', 'means': 'vital signs '},
    {'id': 491, 'name': 'VSD', 'means': 'Ventricular septal defect '},
    {'id': 492, 'name': 'VZV', 'means': ' Varicella zoster virus '},
    {'id': 493, 'name': 'W/C', 'means': ' wheel chair '},
  ];

  List<Map<String, dynamic>> _foundWords = [];

  @override
  void initState() {
    super.initState();
    _foundWords = _allWords;
  }

  void _filter(String key) {
    List<Map<String, dynamic>> results = [];
    if (key.isEmpty) {
      results = _allWords;
    } else {
      results = _allWords
          .where((element) =>
          element['name'].toLowerCase().contain(key.toLowerCase()))
          .toList();
    }
    setState(() {
      _foundWords = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent.shade700,
        // actions: [
        //   IconButton(
        //     icon: const Icon(
        //       CupertinoIcons.back,
        //       size: 15,
        //       color: Colors.white,
        //     ),
        //     tooltip: 'back button', onPressed: () {  onPressed:
        //   Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //       builder: (context) => const NurseHome(),
        //     ),
        //   ); },
        //   )
        // ],
        title: const Text(
          'NURSING ABBREVIATIONS',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            color: Colors.white,
            fontSize: 20,
            fontStyle: FontStyle.normal,
          ),/*GoogleFonts.lato(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20,
              fontStyle: FontStyle.italic),*/
        ),
        centerTitle: true,

      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          TextField(
            textAlign: TextAlign.justify,
            onChanged: (value) => _filter(value),
            cursorColor: Colors.lightBlueAccent,
            decoration: const InputDecoration(
              icon: Icon(
                Icons.list,
                size: 25,
              ),
              iconColor: Colors.blue,
              labelText: 'Search',
              labelStyle: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.blue,
                fontSize: 20,
                fontStyle: FontStyle.normal,
              ),/*GoogleFonts.lato(
                fontStyle: FontStyle.normal,
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.blue,
              ),*/
              suffixIcon: Icon(
                Icons.search,
                color: Colors.blue,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: _foundWords.isNotEmpty
                ? ListView.builder(
                itemCount: _foundWords.length,
                itemBuilder: (context, index) {
                  return Card(
                    key: ValueKey(_foundWords[index]['id']),
                    color: Colors.white,
                    elevation: 4,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: ListTile(
                      leading: const Icon(
                        Icons.stacked_line_chart,
                        color: Colors.black,
                      ),
                      title: Text(
                        _foundWords[index]['name'],
                        style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.blue,
                          fontSize: 20,
                          fontStyle: FontStyle.normal,
                        ),/*GoogleFonts.lato(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          letterSpacing: 3,
                          color: Colors.white,
                        ),*/
                      ),
                      subtitle: Text(
                        _foundWords[index]['means'],
                        style: const TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.blue,
                          fontSize: 15,
                          fontStyle: FontStyle.normal,
                        ), /*GoogleFonts.lato(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            fontStyle: FontStyle.italic,
                            color: Colors.black,
                            letterSpacing: 2
                        ),*/
                      ),
                      trailing: Text(_allWords[index]['id'].toString(),
                        style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.blue,
                          fontSize: 20,
                          fontStyle: FontStyle.normal,
                        ),/*GoogleFonts.lato(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            fontStyle: FontStyle.italic,
                            color: Colors.tealAccent,
                            letterSpacing: 2
                        )*/ ),
                    ),
                  );
                })
                : const Center(
              child: Text('Nothing Found'),
            ),
          ),
        ]
        ),
      ),
    );
  }
}


