package com.caiotf.maissaude;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class BuscaActivity extends AppCompatActivity {

    private Button botaoEspecialidades;
    private Button botaoLocais;
    private Button botaoConvenios;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getSupportActionBar().hide();
        setContentView(R.layout.activity_busca);

        botaoEspecialidades = (Button) findViewById(R.id.botaoEspecialidadeId);
        botaoEspecialidades.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                startActivity(new Intent(BuscaActivity.this, EspecialidadesActivity.class));
            }
        });

        botaoLocais = (Button) findViewById(R.id.botaoLocaisId);
        botaoLocais.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                startActivity(new Intent(BuscaActivity.this, LocaisActivity.class));
            }
        });

        botaoConvenios = (Button) findViewById(R.id.botaoConvenioId);
        botaoConvenios.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                startActivity(new Intent(BuscaActivity.this, ConveniosActivity.class));
            }
        });


    }
}
