package com.caiotf.maissaude.adapter;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

import com.caiotf.maissaude.R;
import com.caiotf.maissaude.model.Dados;

import java.util.List;

/**
 * Created by caio on 11/09/17.
 */

public class ListDadosAdapterConvenio extends BaseAdapter{
    private Context mContext;
    private List<Dados> mDadosList;

    public ListDadosAdapterConvenio(Context mContext, List<Dados> mDadosList) {
        this.mContext = mContext;
        this.mDadosList = mDadosList;
    }

    @Override
    public int getCount() {
        return mDadosList.size();
    }

    @Override
    public Object getItem(int position) {
        return mDadosList.get(position);
    }

    @Override
    public long getItemId(int position) {
        return mDadosList.get(position).getCodLoc();
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {

        View v = View.inflate(mContext, R.layout.item_listview_convenio, null);
        TextView tvNome = (TextView)v.findViewById(R.id.nomeIdConv);
        TextView tvEndereco = (TextView)v.findViewById(R.id.enderecoIdConv);
        TextView tvTelefone = (TextView)v.findViewById(R.id.telefoneIdConv);
        //TextView tvConvenio = (TextView)v.findViewById(R.id.convenioId);
        tvNome.setText(mDadosList.get(position).getNome());
        tvEndereco.setText(mDadosList.get(position).getEndereco());
        tvTelefone.setText(mDadosList.get(position).getTelefone());
        //tvConvenio.setText(mDadosList.get(position).getConvenios());
        return v;
    }

}
