package com.caiotf.maissaude;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListView;

public class LocaisActivity extends AppCompatActivity {

    private ListView listViewLocais;
    private String[] listaLocais = {
            "Hospitais", "Clínicas", "Laboratórios",
    };

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getSupportActionBar().hide();
        setContentView(R.layout.activity_locais);

        listViewLocais = (ListView) findViewById(R.id.listViewId2);
        ArrayAdapter<String> adapter2 = new ArrayAdapter<String>(
                getApplication(),
                R.layout.adapter_layout,
                listaLocais
        );
        listViewLocais.setAdapter(adapter2);

        listViewLocais.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                switch (i) {
                    case 0:
                        startActivity(new Intent(getApplicationContext(), HospitaisActivity.class));
                        break;
                    case 1:
                        startActivity(new Intent(getApplicationContext(), ClinicasActivity.class));
                        break;
                    case 2:
                        startActivity(new Intent(getApplicationContext(), LaboratoriosActivity.class));
                        break;
                }
            }
        });

    }
}
