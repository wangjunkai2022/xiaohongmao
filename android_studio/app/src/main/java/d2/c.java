package d2;

import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.e;
import com.fasterxml.jackson.databind.l;
import java.lang.reflect.Type;

/* compiled from: SchemaAware.java */
/* loaded from: classes.dex */
public interface c {
    e getSchema(l lVar, Type type) throws JsonMappingException;

    e getSchema(l lVar, Type type, boolean z9) throws JsonMappingException;
}
