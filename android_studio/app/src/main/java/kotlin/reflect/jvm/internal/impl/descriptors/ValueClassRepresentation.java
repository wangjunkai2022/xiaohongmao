package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.jvm.internal.impl.name.Name;
import kotlin.reflect.jvm.internal.impl.types.model.SimpleTypeMarker;
import m8.g;

/* compiled from: ValueClassRepresentation.kt */
/* loaded from: classes4.dex */
public abstract class ValueClassRepresentation<Type extends SimpleTypeMarker> {
    private ValueClassRepresentation() {
    }

    public /* synthetic */ ValueClassRepresentation(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    @g
    public abstract List<Pair<Name, Type>> getUnderlyingPropertyNamesToTypes();

    @g
    public final <Other extends SimpleTypeMarker> ValueClassRepresentation<Other> mapUnderlyingType(@g Function1<? super Type, ? extends Other> transform) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(transform, "transform");
        if (this instanceof InlineClassRepresentation) {
            InlineClassRepresentation inlineClassRepresentation = (InlineClassRepresentation) this;
            return new InlineClassRepresentation(inlineClassRepresentation.getUnderlyingPropertyName(), transform.invoke(inlineClassRepresentation.getUnderlyingType()));
        } else if (this instanceof MultiFieldValueClassRepresentation) {
            List<Pair<Name, Type>> underlyingPropertyNamesToTypes = getUnderlyingPropertyNamesToTypes();
            collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(underlyingPropertyNamesToTypes, 10);
            ArrayList arrayList = new ArrayList(collectionSizeOrDefault);
            Iterator<T> it = underlyingPropertyNamesToTypes.iterator();
            while (it.hasNext()) {
                Pair pair = (Pair) it.next();
                arrayList.add(TuplesKt.to((Name) pair.component1(), transform.invoke((SimpleTypeMarker) pair.component2())));
            }
            return new MultiFieldValueClassRepresentation(arrayList);
        } else {
            throw new NoWhenBranchMatchedException();
        }
    }
}
