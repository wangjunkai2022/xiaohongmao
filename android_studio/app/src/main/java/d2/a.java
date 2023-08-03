package d2;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.a0;
import com.fasterxml.jackson.databind.e;
import com.fasterxml.jackson.databind.node.JsonNodeFactory;
import com.fasterxml.jackson.databind.node.ObjectNode;

/* compiled from: JsonSchema.java */
@Deprecated
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final ObjectNode f61981a;

    @JsonCreator
    public a(ObjectNode objectNode) {
        this.f61981a = objectNode;
    }

    public static e a() {
        ObjectNode objectNode = JsonNodeFactory.instance.objectNode();
        objectNode.put("type", shaded.org.apache.commons.codec.language.bm.c.f93573b);
        return objectNode;
    }

    @a0
    public ObjectNode b() {
        return this.f61981a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && (obj instanceof a)) {
            a aVar = (a) obj;
            ObjectNode objectNode = this.f61981a;
            if (objectNode == null) {
                return aVar.f61981a == null;
            }
            return objectNode.equals(aVar.f61981a);
        }
        return false;
    }

    public int hashCode() {
        return this.f61981a.hashCode();
    }

    public String toString() {
        return this.f61981a.toString();
    }
}
