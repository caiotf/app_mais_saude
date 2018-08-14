package com.caiotf.maissaude;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListView;

public class ConveniosActivity extends AppCompatActivity {

    private ListView listViewConvenios;
    private String[] listaConvenios = {
            "Unimed", "Ipsemg", "Casu",
    };

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getSupportActionBar().hide();
        setContentView(R.layout.activity_convenios);

        listViewConvenios = (ListView) findViewById(R.id.listViewId3);
        ArrayAdapter<String> adapter3 = new ArrayAdapter<String>(
                getApplication(),
                R.layout.adapter_layout,
                listaConvenios
        );
        listViewConvenios.setAdapter(adapter3);

        listViewConvenios.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
                switch (i) {
                    case 0:
                        startActivity(new Intent(getApplicationContext(), UnimedActivity.class));
                        break;
                    case 1:
                        startActivity(new Intent(getApplicationContext(), IpsemgActivity.class));
                        break;
                    case 2:
                        startActivity(new Intent(getApplicationContext(), CasuActivity.class));
                        break;
                }
            }
        });

    }
}


