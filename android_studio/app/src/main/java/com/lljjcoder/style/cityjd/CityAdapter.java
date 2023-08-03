package com.lljjcoder.style.cityjd;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.lljjcoder.bean.CityBean;
import com.lljjcoder.style.citypickerview.R;
import java.util.List;

/* loaded from: classes3.dex */
public class CityAdapter extends BaseAdapter {
    private int cityIndex = -1;
    Context context;
    List<CityBean> mCityList;

    /* loaded from: classes3.dex */
    class Holder {
        TextView name;
        ImageView selectImg;

        Holder() {
        }
    }

    public CityAdapter(Context context, List<CityBean> list) {
        this.context = context;
        this.mCityList = list;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.mCityList.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i4) {
        return Long.parseLong(this.mCityList.get(i4).getId());
    }

    public int getSelectedPosition() {
        return this.cityIndex;
    }

    @Override // android.widget.Adapter
    public View getView(int i4, View view, ViewGroup viewGroup) {
        Holder holder;
        if (view == null) {
            view = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.pop_jdcitypicker_item, viewGroup, false);
            holder = new Holder();
            holder.name = (TextView) view.findViewById(R.id.name);
            holder.selectImg = (ImageView) view.findViewById(R.id.selectImg);
            view.setTag(holder);
        } else {
            holder = (Holder) view.getTag();
        }
        CityBean item = getItem(i4);
        holder.name.setText(item.getName());
        int i10 = this.cityIndex;
        boolean z9 = i10 != -1 && this.mCityList.get(i10).getName().equals(item.getName());
        holder.name.setEnabled(!z9);
        holder.selectImg.setVisibility(z9 ? 0 : 8);
        return view;
    }

    public void updateSelectedPosition(int i4) {
        this.cityIndex = i4;
    }

    @Override // android.widget.Adapter
    public CityBean getItem(int i4) {
        return this.mCityList.get(i4);
    }
}
