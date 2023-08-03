package com.lljjcoder.style.citythreelist;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.lljjcoder.style.citylist.bean.CityInfoBean;
import com.lljjcoder.style.citypickerview.R;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class CityAdapter extends RecyclerView.Adapter<MyViewHolder> {
    List<CityInfoBean> cityList;
    Context context;
    private OnItemSelectedListener mOnItemClickListener;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class MyViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: tv  reason: collision with root package name */
        TextView f46915tv;

        public MyViewHolder(View view) {
            super(view);
            this.f46915tv = (TextView) view.findViewById(R.id.default_item_city_name_tv);
        }
    }

    /* loaded from: classes3.dex */
    public interface OnItemSelectedListener {
        void onItemSelected(View view, int i4);
    }

    public CityAdapter(Context context, List<CityInfoBean> list) {
        new ArrayList();
        this.cityList = list;
        this.context = context;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.cityList.size();
    }

    public void setOnItemClickListener(OnItemSelectedListener onItemSelectedListener) {
        this.mOnItemClickListener = onItemSelectedListener;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(MyViewHolder myViewHolder, final int i4) {
        myViewHolder.f46915tv.setText(this.cityList.get(i4).getName());
        myViewHolder.f46915tv.setOnClickListener(new View.OnClickListener() { // from class: com.lljjcoder.style.citythreelist.CityAdapter.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (CityAdapter.this.mOnItemClickListener == null || i4 >= CityAdapter.this.cityList.size()) {
                    return;
                }
                CityAdapter.this.mOnItemClickListener.onItemSelected(view, i4);
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public MyViewHolder onCreateViewHolder(ViewGroup viewGroup, int i4) {
        return new MyViewHolder(LayoutInflater.from(this.context).inflate(R.layout.item_citylist, viewGroup, false));
    }
}
