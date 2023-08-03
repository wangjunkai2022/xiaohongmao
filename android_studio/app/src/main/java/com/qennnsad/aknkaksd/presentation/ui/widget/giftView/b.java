package com.qennnsad.aknkaksd.presentation.ui.widget.giftView;

import android.content.Context;
import android.graphics.PorterDuff;
import android.net.Uri;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.didi.live.spring.R;
import com.facebook.drawee.view.SimpleDraweeView;
import com.qennnsad.aknkaksd.data.bean.gift.Gift;
import com.qennnsad.aknkaksd.data.repository.m;
import f5.d;
import java.util.ArrayList;
import java.util.List;

/* compiled from: GiftGridViewAdapter.java */
/* loaded from: classes3.dex */
public class b extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private List<Gift> f54416a;

    /* renamed from: b  reason: collision with root package name */
    private ArrayList<Boolean> f54417b;

    /* renamed from: c  reason: collision with root package name */
    private Context f54418c;

    /* renamed from: d  reason: collision with root package name */
    private int f54419d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f54420e;

    /* renamed from: f  reason: collision with root package name */
    private m f54421f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f54422g;

    /* compiled from: GiftGridViewAdapter.java */
    /* loaded from: classes3.dex */
    class a {

        /* renamed from: a  reason: collision with root package name */
        private final SimpleDraweeView f54423a;

        /* renamed from: b  reason: collision with root package name */
        private final ImageView f54424b;

        /* renamed from: c  reason: collision with root package name */
        private final ImageView f54425c;

        /* renamed from: d  reason: collision with root package name */
        private final TextView f54426d;

        /* renamed from: e  reason: collision with root package name */
        private final TextView f54427e;

        /* renamed from: f  reason: collision with root package name */
        private int f54428f;

        public a(View view) {
            this.f54428f = 0;
            this.f54423a = (SimpleDraweeView) view.findViewById(R.id.item_gift_icon);
            this.f54426d = (TextView) view.findViewById(R.id.item_gift_money);
            this.f54427e = (TextView) view.findViewById(R.id.item_gift_experience);
            this.f54424b = (ImageView) view.findViewById(R.id.item_gift_continue);
            this.f54425c = (ImageView) view.findViewById(R.id.item_gift_toy);
            this.f54428f = (int) b.this.f54418c.getResources().getDimension(R.dimen.item_gift_icon_size);
        }

        public void a(Gift gift, boolean z9) {
            if (z9) {
                this.f54424b.setImageResource(R.drawable.ic_check);
                this.f54424b.setBackgroundResource(R.drawable.shape_yunka_circle);
                ImageView imageView = this.f54424b;
                imageView.setColorFilter(ContextCompat.getColor(imageView.getContext(), R.color.yunkacolor), PorterDuff.Mode.SRC_IN);
                this.f54424b.setVisibility(0);
            } else {
                this.f54424b.setVisibility(8);
            }
            if (gift.getToy_bind() == 1 && b.this.f54420e) {
                this.f54425c.setVisibility(0);
            }
            this.f54426d.setText(String.valueOf(gift.getPrice()));
            String displayName = gift.getDisplayName();
            if (TextUtils.isEmpty(displayName)) {
                this.f54427e.setVisibility(8);
            } else {
                this.f54427e.setVisibility(0);
                this.f54427e.setText(displayName);
            }
            if (TextUtils.isEmpty(gift.getImageUrl())) {
                return;
            }
            Uri j4 = b.this.f54421f.j(gift.getImageUrl());
            int i4 = this.f54428f;
            com.qennnsad.aknkaksd.util.fresco.c.d(j4, i4, i4, this.f54423a);
        }
    }

    public b(Context context, List<Gift> list, int i4, boolean z9, boolean z10) {
        this.f54419d = 0;
        this.f54416a = list;
        this.f54418c = context;
        this.f54421f = ((d) dagger.hilt.c.a(context.getApplicationContext(), d.class)).c().g();
        this.f54419d = i4;
        this.f54420e = z9;
        this.f54422g = z10;
        if (list == null) {
            this.f54416a = new ArrayList();
            return;
        }
        this.f54417b = new ArrayList<>();
        for (int i10 = 0; i10 < this.f54416a.size(); i10++) {
            this.f54417b.add(Boolean.FALSE);
        }
    }

    public void d(int i4, int i10) {
        if (i4 != -1) {
            this.f54417b.set(i4, Boolean.TRUE);
        }
        if (i10 != -1) {
            this.f54417b.set(i10, Boolean.FALSE);
        }
        notifyDataSetChanged();
    }

    public void e(ArrayList<Gift> arrayList) {
        this.f54416a = arrayList;
        this.f54417b = new ArrayList<>();
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f54416a.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i4) {
        return this.f54416a.get(i4);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i4) {
        return i4;
    }

    @Override // android.widget.Adapter
    public View getView(int i4, View view, ViewGroup viewGroup) {
        a aVar;
        if (view == null) {
            view = LayoutInflater.from(this.f54418c).inflate(this.f54422g ? R.layout.item_gift_big : R.layout.item_gift, (ViewGroup) null);
            aVar = new a(view);
            view.setTag(aVar);
        } else {
            aVar = (a) view.getTag();
        }
        aVar.a(this.f54416a.get(i4), this.f54417b.get(i4).booleanValue());
        return view;
    }

    public b(Context context) {
        this.f54419d = 0;
        this.f54416a = new ArrayList();
        this.f54417b = new ArrayList<>();
        this.f54418c = context;
    }
}
