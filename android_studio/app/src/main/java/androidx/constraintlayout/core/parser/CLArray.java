package androidx.constraintlayout.core.parser;

import java.util.Iterator;

/* loaded from: classes.dex */
public class CLArray extends CLContainer {
    public CLArray(char[] cArr) {
        super(cArr);
    }

    public static CLElement allocate(char[] cArr) {
        return new CLArray(cArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.constraintlayout.core.parser.CLElement
    public String toFormattedJSON(int i4, int i10) {
        StringBuilder sb = new StringBuilder();
        String json = toJSON();
        if (i10 <= 0 && json.length() + i4 < CLElement.MAX_LINE) {
            sb.append(json);
        } else {
            sb.append("[\n");
            Iterator<CLElement> it = this.mElements.iterator();
            boolean z9 = true;
            while (it.hasNext()) {
                CLElement next = it.next();
                if (z9) {
                    z9 = false;
                } else {
                    sb.append(",\n");
                }
                addIndent(sb, CLElement.BASE_INDENT + i4);
                sb.append(next.toFormattedJSON(CLElement.BASE_INDENT + i4, i10 - 1));
            }
            sb.append("\n");
            addIndent(sb, i4);
            sb.append("]");
        }
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.constraintlayout.core.parser.CLElement
    public String toJSON() {
        StringBuilder sb = new StringBuilder(getDebugName() + "[");
        boolean z9 = true;
        for (int i4 = 0; i4 < this.mElements.size(); i4++) {
            if (z9) {
                z9 = false;
            } else {
                sb.append(", ");
            }
            sb.append(this.mElements.get(i4).toJSON());
        }
        return ((Object) sb) + "]";
    }
}
