insert into clinica(clinical_name, clinical_phone_number, clinical_address) values
('Xonabod', '+998903536665', 'Xonabod QFY'),
('Shox Med', '+998909990989', 'Mirobod bozor');

insert into clinical_services(clinical_service_name, clinica_id) values
('MRT', 1),
('Cardio servise', 2),
('MRT', 2),
('Cardio servise', 1);

insert into patient(patient_name, patient_phone_number, clinica_id, clinical_services_id) values
('Abdulaziz', '+998974114154', 2, 2),
('Abdurahmon', '+998909649090', 1, 2);

insert into clinica_analyzes(analysis_text, clinica_id, clinical_services_id, patient_id) values
('Hammasi yaxshi joyida', 1, 1, 2),
('Yurak faoliyati yaxshi, qon bosimi normada', 2, 2, 1);

insert into clinica_analyzes(analysis_text, clinica_id, clinical_services_id, patient_id) values
('Sog''lom', 1, 1, 2);

insert into clinica_analyzes(analysis_text, clinica_id, clinical_services_id, patient_id) values
('Sog''lom', 1, 2, 2);

insert into clinica_analyzes(analysis_text, clinica_id, clinical_services_id, patient_id) values
('Ishladimi yo''qmi?', 2, 1, 1);

insert into clinica_analyzes(analysis_text, clinica_id, clinical_services_id, patient_id) values
('nima gap', 1, 1, 1);

insert into clinica_analyzes(analysis_text, clinica_id, clinical_services_id, patient_id) values
('moxito', 2, 2, 2);

select
  c.clinical_name,
  c.clinical_address,
  c.clinical_phone_number,
  p.patient_name,
  cs.clinical_service_name,
  a.analysis_text
from clinica_analyzes as a
join clinica as c on a.clinica_id = c.clinica_id
join clinical_services as cs on a.clinical_services_id = cs.clinical_services_id
join patient as p on a.patient_id = p.patient_id and p.patient_name = 'Abdurahmon' and p.patient_phone_number = '+998909649090';