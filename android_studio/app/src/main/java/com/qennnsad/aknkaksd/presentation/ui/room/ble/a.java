package com.qennnsad.aknkaksd.presentation.ui.room.ble;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.clj.fastble.data.BleDevice;
import com.didi.live.spring.R;
import java.util.ArrayList;
import java.util.List;

/* compiled from: DeviceAdapter.java */
/* loaded from: classes3.dex */
public class a extends BaseAdapter {

    /* renamed from: a  reason: collision with root package name */
    private Context f53289a;

    /* renamed from: b  reason: collision with root package name */
    private List<BleDevice> f53290b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private d f53291c;

    /* compiled from: DeviceAdapter.java */
    /* renamed from: com.qennnsad.aknkaksd.presentation.ui.room.ble.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class View$OnClickListenerC0441a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BleDevice f53292a;

        View$OnClickListenerC0441a(BleDevice bleDevice) {
            this.f53292a = bleDevice;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (a.this.f53291c != null) {
                a.this.f53291c.c(this.f53292a);
            }
        }
    }

    /* compiled from: DeviceAdapter.java */
    /* loaded from: classes3.dex */
    class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BleDevice f53294a;

        b(BleDevice bleDevice) {
            this.f53294a = bleDevice;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (a.this.f53291c != null) {
                a.this.f53291c.a(this.f53294a);
            }
        }
    }

    /* compiled from: DeviceAdapter.java */
    /* loaded from: classes3.dex */
    class c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BleDevice f53296a;

        c(BleDevice bleDevice) {
            this.f53296a = bleDevice;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (a.this.f53291c != null) {
                a.this.f53291c.b(this.f53296a);
            }
        }
    }

    /* compiled from: DeviceAdapter.java */
    /* loaded from: classes3.dex */
    public interface d {
        void a(BleDevice bleDevice);

        void b(BleDevice bleDevice);

        void c(BleDevice bleDevice);
    }

    /* compiled from: DeviceAdapter.java */
    /* loaded from: classes3.dex */
    class e {

        /* renamed from: a  reason: collision with root package name */
        ImageView f53298a;

        /* renamed from: b  reason: collision with root package name */
        TextView f53299b;

        /* renamed from: c  reason: collision with root package name */
        TextView f53300c;

        /* renamed from: d  reason: collision with root package name */
        TextView f53301d;

        /* renamed from: e  reason: collision with root package name */
        LinearLayout f53302e;

        /* renamed from: f  reason: collision with root package name */
        LinearLayout f53303f;

        /* renamed from: g  reason: collision with root package name */
        Button f53304g;

        /* renamed from: h  reason: collision with root package name */
        Button f53305h;

        /* renamed from: i  reason: collision with root package name */
        Button f53306i;

        e() {
        }
    }

    public a(Context context) {
        this.f53289a = context;
    }

    public void b(BleDevice bleDevice) {
        g(bleDevice);
        this.f53290b.add(bleDevice);
    }

    public void c() {
        d();
        e();
    }

    public void d() {
        for (int i4 = 0; i4 < this.f53290b.size(); i4++) {
            if (com.clj.fastble.a.w().J(this.f53290b.get(i4))) {
                this.f53290b.remove(i4);
            }
        }
    }

    public void e() {
        for (int i4 = 0; i4 < this.f53290b.size(); i4++) {
            if (!com.clj.fastble.a.w().J(this.f53290b.get(i4))) {
                this.f53290b.remove(i4);
            }
        }
    }

    @Override // android.widget.Adapter
    /* renamed from: f */
    public BleDevice getItem(int i4) {
        if (i4 > this.f53290b.size()) {
            return null;
        }
        return this.f53290b.get(i4);
    }

    public void g(BleDevice bleDevice) {
        for (int i4 = 0; i4 < this.f53290b.size(); i4++) {
            if (bleDevice.getKey().equals(this.f53290b.get(i4).getKey())) {
                this.f53290b.remove(i4);
            }
        }
    }

    @Override // android.widget.Adapter
    public int getCount() {
        return this.f53290b.size();
    }

    @Override // android.widget.Adapter
    public long getItemId(int i4) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i4, View view, ViewGroup viewGroup) {
        e eVar;
        if (view != null) {
            eVar = (e) view.getTag();
        } else {
            view = View.inflate(this.f53289a, R.layout.adapter_device, null);
            eVar = new e();
            view.setTag(eVar);
            eVar.f53298a = (ImageView) view.findViewById(R.id.img_blue);
            eVar.f53299b = (TextView) view.findViewById(R.id.txt_name);
            eVar.f53300c = (TextView) view.findViewById(R.id.txt_mac);
            eVar.f53301d = (TextView) view.findViewById(R.id.txt_rssi);
            eVar.f53302e = (LinearLayout) view.findViewById(R.id.layout_idle);
            eVar.f53303f = (LinearLayout) view.findViewById(R.id.layout_connected);
            eVar.f53304g = (Button) view.findViewById(R.id.btn_disconnect);
            eVar.f53305h = (Button) view.findViewById(R.id.btn_connect);
            eVar.f53306i = (Button) view.findViewById(R.id.btn_detail);
        }
        BleDevice item = getItem(i4);
        if (item != null) {
            boolean J = com.clj.fastble.a.w().J(item);
            String name = item.getName();
            String mac = item.getMac();
            int rssi = item.getRssi();
            eVar.f53299b.setText(name);
            eVar.f53300c.setText(mac);
            eVar.f53301d.setText(String.valueOf(rssi));
            if (J) {
                eVar.f53298a.setImageResource(R.drawable.ic_blue_connected);
                eVar.f53299b.setTextColor(-14816842);
                eVar.f53300c.setTextColor(-14816842);
                eVar.f53302e.setVisibility(8);
                eVar.f53303f.setVisibility(0);
            } else {
                eVar.f53298a.setImageResource(R.drawable.ic_blue_remote);
                eVar.f53299b.setTextColor(-1);
                eVar.f53300c.setTextColor(-1);
                eVar.f53302e.setVisibility(0);
                eVar.f53303f.setVisibility(8);
            }
        }
        eVar.f53305h.setOnClickListener(new View$OnClickListenerC0441a(item));
        eVar.f53304g.setOnClickListener(new b(item));
        eVar.f53306i.setOnClickListener(new c(item));
        return view;
    }

    public void h(d dVar) {
        this.f53291c = dVar;
    }
}
