package com.caiotf.maissaude;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.Spinner;

public class MainActivity extends AppCompatActivity {

    private ImageView botaoEntrar;
    private Spinner spinnerCidades;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getSupportActionBar().hide();
        setContentView(R.layout.activity_main);

        botaoEntrar = (ImageView) findViewById(R.id.botaoEntrarId);

        botaoEntrar.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                startActivity(new Intent(MainActivity.this, BuscaActivity.class));
            }
        });

        spinnerCidades = (Spinner) findViewById(R.id.spinnerCidadesId);
        ArrayAdapter adapter = ArrayAdapter.createFromResource(MainActivity.this, R.array.arrayCidades, android.R.layout.simple_spinner_item);
        spinnerCidades.setAdapter(adapter);
    }
}
