package com.lljjcoder.style.cityjd;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.lljjcoder.bean.ProvinceBean;
import com.lljjcoder.style.citypickerview.R;
import java.util.List;

/* loaded from: classes3.dex */
public class ProvinceAdapter extends BaseAdapter {
    Context context;
    List<ProvinceBean> mProList;
    private int provinceIndex = -1;

    /* loaded from: classes3.dex */
    class Holder {
        TextView name;
        ImageView selectImg;

        Holder() {
        }
    }

    public ProvinceAdapter(Context context, List<ProvinceBean> list) {
        this.context = context;
        this.mProList = list;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.mProList.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i4) {
        return Long.parseLong(this.mProList.get(i4).getId());
    }

    public int getSelectedPosition() {
        return this.provinceIndex;
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
        ProvinceBean item = getItem(i4);
        holder.name.setText(item.getName());
        int i10 = this.provinceIndex;
        boolean z9 = i10 != -1 && this.mProList.get(i10).getName().equals(item.getName());
        holder.name.setEnabled(!z9);
        holder.selectImg.setVisibility(z9 ? 0 : 8);
        return view;
    }

    public void updateSelectedPosition(int i4) {
        this.provinceIndex = i4;
    }

    @Override // android.widget.Adapter
    public ProvinceBean getItem(int i4) {
        return this.mProList.get(i4);
    }
}
