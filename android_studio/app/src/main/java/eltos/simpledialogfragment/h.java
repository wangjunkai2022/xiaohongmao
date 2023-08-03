package eltos.simpledialogfragment;

import android.os.Bundle;
import android.text.format.DateFormat;
import android.view.View;
import android.widget.TimePicker;

/* compiled from: SimpleTimeDialog.java */
/* loaded from: classes3.dex */
public class h extends b<h> implements TimePicker.OnTimeChangedListener {
    public static final String TAG = "SimpleTimeDialog.";

    /* renamed from: s  reason: collision with root package name */
    public static final String f65202s = "SimpleTimeDialog.HOUR";

    /* renamed from: t  reason: collision with root package name */
    public static final String f65203t = "SimpleTimeDialog.MINUTE";

    /* renamed from: u  reason: collision with root package name */
    protected static final String f65204u = "SimpleTimeDialog.VIEW_24_HOUR";

    /* renamed from: r  reason: collision with root package name */
    private TimePicker f65205r;

    public static h W0() {
        return new h();
    }

    @Override // eltos.simpledialogfragment.b
    protected View M0(Bundle bundle) {
        TimePicker timePicker = new TimePicker(getContext());
        this.f65205r = timePicker;
        if (bundle != null) {
            timePicker.setCurrentHour(Integer.valueOf(bundle.getInt(f65202s)));
            this.f65205r.setCurrentMinute(Integer.valueOf(bundle.getInt(f65203t)));
        } else {
            if (Z().containsKey(f65202s)) {
                this.f65205r.setCurrentHour(Integer.valueOf(Z().getInt(f65202s)));
            }
            if (Z().containsKey(f65203t)) {
                this.f65205r.setCurrentMinute(Integer.valueOf(Z().getInt(f65203t)));
            }
        }
        if (Z().containsKey(f65204u)) {
            this.f65205r.setIs24HourView(Boolean.valueOf(Z().getBoolean(f65204u)));
        } else {
            this.f65205r.setIs24HourView(Boolean.valueOf(DateFormat.is24HourFormat(getContext())));
        }
        this.f65205r.setOnTimeChangedListener(this);
        return this.f65205r;
    }

    @Override // eltos.simpledialogfragment.b
    protected Bundle R0(int i4) {
        Bundle bundle = new Bundle();
        bundle.putInt(f65202s, this.f65205r.getCurrentHour().intValue());
        bundle.putInt(f65203t, this.f65205r.getCurrentMinute().intValue());
        return bundle;
    }

    public h X0(int i4) {
        return (h) t0(f65202s, i4);
    }

    public h Y0(int i4) {
        return (h) t0(f65203t, i4);
    }

    public h Z0(boolean z9) {
        return (h) w0(f65204u, z9);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putInt(f65202s, this.f65205r.getCurrentHour().intValue());
        bundle.putInt(f65203t, this.f65205r.getCurrentMinute().intValue());
        super.onSaveInstanceState(bundle);
    }

    @Override // android.widget.TimePicker.OnTimeChangedListener
    public void onTimeChanged(TimePicker timePicker, int i4, int i10) {
    }
}
