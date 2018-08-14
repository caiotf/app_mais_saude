package com.caiotf.maissaude;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListView;

public class EspecialidadesActivity extends AppCompatActivity {

    private ListView listViewEsp;
    private String[] listaEspecialidades = {
            "Angiologia", "Cardiologia", "Clínica Geral", "Dermatologia",
            "Geriatria",  "Ginecologia e Obstetrícia", "Neurologia",
            "Odontologia", "Oftamologia", "Ortopedia",
            "Otorrinolaringologia", "Pediatria"
    };

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getSupportActionBar().hide();
        setContentView(R.layout.activity_especialidades);

        listViewEsp = (ListView) findViewById(R.id.listViewId);
        ArrayAdapter<String> adapter1 = new ArrayAdapter<String>(
                getApplication(),
                R.layout.adapter_layout,
                listaEspecialidades
        );
        listViewEsp.setAdapter(adapter1);

        listViewEsp.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {

                switch(i){
                    case 0:
                        startActivity(new Intent(getApplicationContext(), AngiologiaActivity.class));
                        break;
                    case 1:
                        startActivity(new Intent(getApplicationContext(), CardiologiaActivity.class));
                        break;
                    case 2:
                        startActivity(new Intent(getApplicationContext(), ClinicoGeralActivity.class));
                        break;
                    case 3:
                        startActivity(new Intent(getApplicationContext(), DermatologiaActivity.class));
                        break;
                    case 4:
                        startActivity(new Intent(getApplicationContext(), GeriatriaActivity.class));
                        break;
                    case 5:
                        startActivity(new Intent(getApplicationContext(), GinecologiaObsteActivity.class));
                        break;
                    case 6:
                        startActivity(new Intent(getApplicationContext(), NeurologiaActivity.class));
                        break;
                    case 7:
                        startActivity(new Intent(getApplicationContext(), OdontologiaActivity.class));
                        break;
                    case 8:
                        startActivity(new Intent(getApplicationContext(), OftamologiaActivity.class));
                        break;
                    case 9:
                        startActivity(new Intent(getApplicationContext(), OrtopediaActivity.class));
                        break;
                    case 10:
                        startActivity(new Intent(getApplicationContext(), OtorrinolaringologiaActivity.class));
                        break;
                    case 11:
                        startActivity(new Intent(getApplicationContext(), PediatriaActivity.class));
                        break;
                }

            }
        });

    }
}
