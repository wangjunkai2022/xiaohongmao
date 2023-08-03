package eltos.simpledialogfragment.form;

import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatSpinner;

/* loaded from: classes3.dex */
public class CustomSpinnerView extends AppCompatSpinner {

    /* renamed from: a  reason: collision with root package name */
    private a f65131a;

    /* loaded from: classes3.dex */
    public interface a {
        void e();
    }

    public CustomSpinnerView(Context context, AttributeSet attributeSet, int i4, int i10) {
        super(context, attributeSet, i4, i10);
    }

    @Override // androidx.appcompat.widget.AppCompatSpinner, android.widget.Spinner, android.view.View
    public boolean performClick() {
        a aVar = this.f65131a;
        if (aVar != null) {
            aVar.e();
        }
        return super.performClick();
    }

    public void setSpinnerEventsListener(a aVar) {
        this.f65131a = aVar;
    }

    public CustomSpinnerView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
    }

    public CustomSpinnerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public CustomSpinnerView(Context context, int i4) {
        super(context, i4);
    }

    public CustomSpinnerView(Context context) {
        super(context);
    }
}
