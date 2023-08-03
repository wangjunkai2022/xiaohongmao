package com.lljjcoder.style.citylist.sortlistview;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.SectionIndexer;
import android.widget.TextView;
import com.lljjcoder.style.citypickerview.R;
import java.util.List;

/* loaded from: classes3.dex */
public class SortAdapter extends BaseAdapter implements SectionIndexer {
    private List<SortModel> list;
    private Context mContext;

    /* loaded from: classes3.dex */
    static final class ViewHolder {
        TextView tvLetter;
        TextView tvTitle;

        ViewHolder() {
        }
    }

    public SortAdapter(Context context, List<SortModel> list) {
        this.mContext = context;
        this.list = list;
    }

    private String getAlpha(String str) {
        String upperCase = str.trim().substring(0, 1).toUpperCase();
        return upperCase.matches("[A-Z]") ? upperCase : "#";
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.list.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i4) {
        return this.list.get(i4);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i4) {
        return i4;
    }

    @Override // android.widget.SectionIndexer
    public int getPositionForSection(int i4) {
        for (int i10 = 0; i10 < getCount(); i10++) {
            if (this.list.get(i10).getSortLetters().toUpperCase().charAt(0) == i4) {
                return i10;
            }
        }
        return -1;
    }

    @Override // android.widget.SectionIndexer
    public int getSectionForPosition(int i4) {
        return this.list.get(i4).getSortLetters().charAt(0);
    }

    @Override // android.widget.SectionIndexer
    public Object[] getSections() {
        return null;
    }

    @Override // android.widget.Adapter
    public View getView(int i4, View view, ViewGroup viewGroup) {
        View view2;
        ViewHolder viewHolder;
        if (view == null) {
            viewHolder = new ViewHolder();
            view2 = LayoutInflater.from(this.mContext).inflate(R.layout.sortlistview_item, (ViewGroup) null);
            viewHolder.tvTitle = (TextView) view2.findViewById(R.id.title);
            viewHolder.tvLetter = (TextView) view2.findViewById(R.id.catalog);
            view2.setTag(viewHolder);
        } else {
            view2 = view;
            viewHolder = (ViewHolder) view.getTag();
        }
        List<SortModel> list = this.list;
        if (list != null && !list.isEmpty()) {
            SortModel sortModel = this.list.get(i4);
            if (i4 == getPositionForSection(getSectionForPosition(i4))) {
                viewHolder.tvLetter.setVisibility(0);
                viewHolder.tvLetter.setText(sortModel.getSortLetters());
            } else {
                viewHolder.tvLetter.setVisibility(8);
            }
            viewHolder.tvTitle.setText(this.list.get(i4).getName());
        }
        return view2;
    }

    public void updateListView(List<SortModel> list) {
        this.list = list;
        notifyDataSetChanged();
    }
}
