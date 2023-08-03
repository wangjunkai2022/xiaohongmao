package com.lljjcoder.style.cityjd;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.lljjcoder.bean.DistrictBean;
import com.lljjcoder.style.citypickerview.R;
import java.util.List;

/* loaded from: classes3.dex */
public class AreaAdapter extends BaseAdapter {
    Context context;
    private int districtIndex = -1;
    List<DistrictBean> mDistrictList;

    /* loaded from: classes3.dex */
    class Holder {
        TextView name;
        ImageView selectImg;

        Holder() {
        }
    }

    public AreaAdapter(Context context, List<DistrictBean> list) {
        this.context = context;
        this.mDistrictList = list;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.mDistrictList.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i4) {
        return Long.parseLong(this.mDistrictList.get(i4).getId());
    }

    public int getSelectedPosition() {
        return this.districtIndex;
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
        DistrictBean item = getItem(i4);
        holder.name.setText(item.getName());
        int i10 = this.districtIndex;
        boolean z9 = i10 != -1 && this.mDistrictList.get(i10).getName().equals(item.getName());
        holder.name.setEnabled(!z9);
        holder.selectImg.setVisibility(z9 ? 0 : 8);
        return view;
    }

    public void updateSelectedPosition(int i4) {
        this.districtIndex = i4;
    }

    @Override // android.widget.Adapter
    public DistrictBean getItem(int i4) {
        return this.mDistrictList.get(i4);
    }
}
