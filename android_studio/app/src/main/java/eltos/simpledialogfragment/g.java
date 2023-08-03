package eltos.simpledialogfragment;

import android.os.AsyncTask;
import android.util.Pair;
import androidx.annotation.CallSuper;

/* compiled from: SimpleProgressTask.java */
/* loaded from: classes3.dex */
public abstract class g<Params, Progress, Result> extends AsyncTask<Params, Progress, Result> {

    /* renamed from: a  reason: collision with root package name */
    protected SimpleProgressDialog f65201a;

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(SimpleProgressDialog simpleProgressDialog) {
        this.f65201a = simpleProgressDialog;
    }

    @Override // android.os.AsyncTask
    @CallSuper
    protected void onPostExecute(Result result) {
        SimpleProgressDialog simpleProgressDialog = this.f65201a;
        if (simpleProgressDialog != null) {
            simpleProgressDialog.c1();
        }
    }

    @Override // android.os.AsyncTask
    @CallSuper
    protected void onPreExecute() {
        SimpleProgressDialog simpleProgressDialog = this.f65201a;
        if (simpleProgressDialog != null) {
            simpleProgressDialog.d1();
        }
    }

    @Override // android.os.AsyncTask
    protected void onProgressUpdate(Progress... progressArr) {
        int i4;
        int i10;
        if (this.f65201a == null || progressArr.length <= 0) {
            return;
        }
        String str = null;
        int i11 = -1;
        if (progressArr instanceof Number[]) {
            Number[] numberArr = (Number[]) progressArr;
            int intValue = numberArr[0].intValue();
            i10 = progressArr.length > 1 ? numberArr[1].intValue() : -1;
            if (progressArr.length > 2) {
                i4 = numberArr[2].intValue();
                i11 = intValue;
            } else {
                i11 = intValue;
                i4 = -1;
            }
        } else {
            i4 = -1;
            i10 = -1;
        }
        if (progressArr instanceof String[]) {
            str = (String) progressArr[0];
            this.f65201a.d1();
        }
        if (progressArr instanceof Pair[]) {
            Pair[] pairArr = (Pair[]) progressArr;
            Pair pair = pairArr[0];
            Object obj = pair.first;
            if (obj instanceof Number) {
                i11 = ((Number) obj).intValue();
            }
            Object obj2 = pair.second;
            if (obj2 instanceof String) {
                str = (String) obj2;
            }
            if (pairArr.length > 1) {
                Object obj3 = pairArr[1].first;
                if (obj3 instanceof Number) {
                    i10 = ((Number) obj3).intValue();
                }
            }
            if (pairArr.length > 2) {
                Object obj4 = pairArr[2].first;
                if (obj4 instanceof Number) {
                    i4 = ((Number) obj4).intValue();
                }
            }
        }
        if (i11 >= 0) {
            this.f65201a.g1(i11);
        }
        if (i11 < 0) {
            this.f65201a.d1();
        }
        if (i10 > 0) {
            this.f65201a.f1(i10);
        }
        if (i4 >= 0) {
            this.f65201a.l1(i4);
        }
        this.f65201a.e1(str);
    }
}
