package com.caiotf.maissaude;

import android.content.Context;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.widget.ListView;
import android.widget.Toast;

import com.caiotf.maissaude.adapter.ListDadosAdapter;
import com.caiotf.maissaude.database.DatabaseHelper;
import com.caiotf.maissaude.model.Dados;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

public class DermatologiaActivity extends AppCompatActivity {

    private ListView lvProduct;
    private ListDadosAdapter adapter;
    private List<Dados> mDadosList;
    private DatabaseHelper mDBHelper;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getSupportActionBar().hide();
        setContentView(R.layout.activity_dermatologia);

        lvProduct = (ListView)findViewById(R.id.listview_product);
        mDBHelper = new DatabaseHelper(this);

        //Check exists database
        File database = getApplicationContext().getDatabasePath(DatabaseHelper.DBNAME);
        if(false == database.exists()) {
            mDBHelper.getReadableDatabase();
            //Copy db
            if(copyDatabase(this)) {
                Toast.makeText(this, "Copy database succes", Toast.LENGTH_SHORT).show();
            } else {
                Toast.makeText(this, "Copy data error", Toast.LENGTH_SHORT).show();
                return;
            }
        }

        //Consulta por Especialidade:
        // CARDIO
        String cCardio = "select  * from local where codesp = 1 and codtipoloc = 4 ORDER BY nome ASC";
        //DERMATO
        String cDerma = "select  * from local  where codesp = 3 and codtipoloc = 4 ORDER BY nome ASC";
        //ANGIOLO
        String cAngiolo = "select  * from local where codesp = 2 and codtipoloc = 4 ORDER BY nome ASC";
        //OTORRINO
        String cOtorrino = "select  * from local where codesp = 6 and codtipoloc = 4 ORDER BY nome ASC";
        //NEURO
        String cNeuro = "select  * from local where codesp = 7 and codtipoloc = 4 ORDER BY nome ASC";
        //ODONTO
        String cOdonto = "select * from local  where codesp = 12 and codtipoloc = 4 ORDER BY nome ASC";
        //GINECO E OBSTETRÍCIA
        String cGineco = "select  * from local  where codesp = 8 and codtipoloc = 4 ORDER BY nome ASC";
        //ORTOPEDI
        String cOrto = "select  * from local where codesp = 11 and codtipoloc = 4 ORDER BY nome ASC";
        //OFTALMO
        String cOftamo = "select  * from local where codesp = 10 and codtipoloc = 4 ORDER BY nome ASC";
        //GERIATRA
        String cGeria = "select  * from local where codesp = 9 and codtipoloc = 4 ORDER BY nome ASC";
        //CLÍNICO GERAL
        String cClinico = "select  * from local where codesp = 5 and codtipoloc = 4 ORDER BY nome ASC";
        //PEDIATRA
        String cPedia = "select  * from local  where codesp = 4 and codtipoloc = 4 ORDER BY nome ASC";

        //Consulta por Local
        //Hospital
        String cHosp = "select  * from local where codtipoloc = 1 ORDER BY nome ASC";
        //Clínica
        String cClin= "select  * from local where codtipoloc = 2 ORDER BY nome ASC";
        //Laboratório
        String cLabo= "select  * from local where codtipoloc = 3 ORDER BY nome ASC";


        //Consulta por Convênio
        //CASU
        String cCasu = "select *  from local l join  conveniolocal lc on l.codlocal = lc.codlocal join especialidades esp on esp.codesp = l.codesp where lc.codconv = 1 ORDER BY nome ASC";

        //IPSEMG
        String cIpsemg = "select *  from local l join  conveniolocal lc on l.codlocal = lc.codlocal join especialidades esp on esp.codesp = l.codesp where lc.codconv = 2 ORDER BY nome ASC";


        //UNIMED
        String cUnimed = "select *  from local l join  conveniolocal lc on l.codlocal = lc.codlocal join especialidades esp on esp.codesp = l.codesp where lc.codconv = 3 ORDER BY nome ASC";

        //Get product list in db when db exists
        mDadosList = mDBHelper.getListDados(cDerma);
        //Init adapter
        adapter = new ListDadosAdapter(this, mDadosList);
        //Set adapter for listview
        lvProduct.setAdapter(adapter);

    }

    private boolean copyDatabase(Context context) {
        try {

            InputStream inputStream = context.getAssets().open(DatabaseHelper.DBNAME);
            String outFileName = DatabaseHelper.DBLOCATION + DatabaseHelper.DBNAME;
            OutputStream outputStream = new FileOutputStream(outFileName);
            byte[]buff = new byte[1024];
            int length = 0;
            while ((length = inputStream.read(buff)) > 0) {
                outputStream.write(buff, 0, length);
            }
            outputStream.flush();
            outputStream.close();
            Log.w("MainActivity","DB copied");
            return true;
        }catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
