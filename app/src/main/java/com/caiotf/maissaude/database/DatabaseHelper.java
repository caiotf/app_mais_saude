package com.caiotf.maissaude.database;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

import com.caiotf.maissaude.model.Dados;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by caio on 11/09/17.
 */

public class DatabaseHelper extends SQLiteOpenHelper{

    public static final String DBNAME = "MaisSaude.sqlite";
    public static final String DBLOCATION = "/data/data/com.caiotf.maissaude/databases/";
    private Context mContext;
    private SQLiteDatabase mDatabase;

    public DatabaseHelper(Context context) {
        super(context, DBNAME, null, 1);
        this.mContext = context;
    }

    @Override
    public void onCreate(SQLiteDatabase db) {

    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {

    }

    public void openDatabase() {
        String dbPath = mContext.getDatabasePath(DBNAME).getPath();
        if(mDatabase != null && mDatabase.isOpen()) {
            return;
        }
        mDatabase = SQLiteDatabase.openDatabase(dbPath, null, SQLiteDatabase.OPEN_READWRITE);
    }

    public void closeDatabase() {
        if(mDatabase!=null) {
            mDatabase.close();
        }
    }


    public List<Dados> getListDados(String sql) {
        Dados dados = null;
        List<Dados> dadosList = new ArrayList<>();
        openDatabase();
        Cursor cursor = mDatabase.rawQuery(sql, null);
        cursor.moveToFirst();
        while (!cursor.isAfterLast()) {
            dados = new Dados(cursor.getInt(0), cursor.getString(1), cursor.getString(2), cursor.getString(3),
                    cursor.getInt(4), cursor.getInt(5), cursor.getString(6) );
            dadosList.add(dados);
            cursor.moveToNext();
        }
        cursor.close();
        closeDatabase();
        return dadosList;
    }
/*
    public List<Dados> getListDadosConvenio(String sql) {
        Dados dados = null;
        List<Dados> dadosList = new ArrayList<>();
        openDatabase();
        Cursor cursor = mDatabase.rawQuery(sql, null);
        cursor.moveToFirst();
        while (!cursor.isAfterLast()) {
            dados = new Dados(cursor.getString(0), cursor.getString(1), cursor.getString(2), cursor.getString(3),
                    cursor.getInt(4), cursor.getInt(5), cursor.getString(6) );
            dadosList.add(dados);
            cursor.moveToNext();
        }
        cursor.close();
        closeDatabase();
        return dadosList;
    }
*/

}
