package eltos.simpledialogfragment;

import android.os.Bundle;
import android.view.View;
import android.widget.DatePicker;
import java.util.Calendar;
import java.util.Date;

/* compiled from: SimpleDateDialog.java */
/* loaded from: classes3.dex */
public class e extends b<e> implements DatePicker.OnDateChangedListener {
    public static final String TAG = "SimpleDateDialog.";

    /* renamed from: s  reason: collision with root package name */
    public static final String f65109s = "SimpleDateDialog.DATE";

    /* renamed from: t  reason: collision with root package name */
    protected static final String f65110t = "SimpleDateDialog.MIN_DATE";

    /* renamed from: u  reason: collision with root package name */
    protected static final String f65111u = "SimpleDateDialog.MAX_DATE";

    /* renamed from: v  reason: collision with root package name */
    protected static final String f65112v = "SimpleDateDialog.FIRST_DAY_OF_WEEK";

    /* renamed from: r  reason: collision with root package name */
    private DatePicker f65113r;

    public static e W0() {
        return new e();
    }

    private long a1() {
        Calendar calendar = Calendar.getInstance();
        calendar.set(this.f65113r.getYear(), this.f65113r.getMonth(), this.f65113r.getDayOfMonth(), 0, 0, 0);
        return calendar.getTimeInMillis();
    }

    @Override // eltos.simpledialogfragment.b
    protected View M0(Bundle bundle) {
        this.f65113r = new DatePicker(getContext());
        Calendar calendar = Calendar.getInstance();
        if (bundle != null) {
            calendar.setTimeInMillis(bundle.getLong(f65109s));
        } else if (Z().containsKey(f65109s)) {
            calendar.setTimeInMillis(Z().getLong(f65109s));
        }
        this.f65113r.init(calendar.get(1), calendar.get(2), calendar.get(5), this);
        if (Z().containsKey(f65110t)) {
            this.f65113r.setMinDate(Z().getLong(f65110t));
        }
        if (Z().containsKey(f65111u)) {
            this.f65113r.setMaxDate(Z().getLong(f65111u));
        }
        if (Z().containsKey(f65112v)) {
            this.f65113r.setFirstDayOfWeek(Z().getInt(f65112v));
        }
        return this.f65113r;
    }

    @Override // eltos.simpledialogfragment.b
    protected Bundle R0(int i4) {
        Bundle bundle = new Bundle();
        bundle.putLong(f65109s, a1());
        return bundle;
    }

    public e X0(long j4) {
        return (e) u0(f65109s, j4);
    }

    public e Y0(Date date) {
        return X0(date.getTime());
    }

    public e Z0(int i4) {
        return (e) t0(f65112v, i4);
    }

    public e b1(long j4) {
        return (e) u0(f65111u, j4);
    }

    public e c1(Date date) {
        return b1(date.getTime());
    }

    public e d1(long j4) {
        return (e) u0(f65110t, j4);
    }

    public e e1(Date date) {
        return d1(date.getTime());
    }

    @Override // android.widget.DatePicker.OnDateChangedListener
    public void onDateChanged(DatePicker datePicker, int i4, int i10, int i11) {
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putLong(f65109s, a1());
        super.onSaveInstanceState(bundle);
    }
}
