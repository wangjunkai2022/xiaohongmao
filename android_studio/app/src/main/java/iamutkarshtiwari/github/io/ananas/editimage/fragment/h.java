package iamutkarshtiwari.github.io.ananas.editimage.fragment;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import iamutkarshtiwari.github.io.ananas.editimage.EditImageActivity;

/* compiled from: BaseEditFragment.java */
/* loaded from: classes3.dex */
public abstract class h extends Fragment {

    /* renamed from: a  reason: collision with root package name */
    protected EditImageActivity f69443a;

    public abstract void U();

    /* JADX INFO: Access modifiers changed from: protected */
    public EditImageActivity V() {
        if (this.f69443a == null) {
            this.f69443a = (EditImageActivity) getActivity();
        }
        return this.f69443a;
    }

    public abstract void W();

    @Override // androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        V();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        V();
    }
}
