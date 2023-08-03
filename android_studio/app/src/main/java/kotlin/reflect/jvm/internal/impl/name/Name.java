package kotlin.reflect.jvm.internal.impl.name;

import io.sentry.protocol.y;
import m8.g;

/* loaded from: classes4.dex */
public final class Name implements Comparable<Name> {
    @g
    private final String name;
    private final boolean special;

    private static /* synthetic */ void $$$reportNull$$$0(int i4) {
        String str = (i4 == 1 || i4 == 2 || i4 == 3 || i4 == 4) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i4 == 1 || i4 == 2 || i4 == 3 || i4 == 4) ? 2 : 3];
        if (i4 == 1 || i4 == 2 || i4 == 3 || i4 == 4) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/name/Name";
        } else {
            objArr[0] = "name";
        }
        if (i4 == 1) {
            objArr[1] = "asString";
        } else if (i4 == 2) {
            objArr[1] = "getIdentifier";
        } else if (i4 == 3 || i4 == 4) {
            objArr[1] = "asStringStripSpecialMarkers";
        } else {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/name/Name";
        }
        switch (i4) {
            case 1:
            case 2:
            case 3:
            case 4:
                break;
            case 5:
                objArr[2] = y.b.f83915c;
                break;
            case 6:
                objArr[2] = "isValidIdentifier";
                break;
            case 7:
                objArr[2] = "special";
                break;
            case 8:
                objArr[2] = "guessByFirstCharacter";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String format = String.format(str, objArr);
        if (i4 != 1 && i4 != 2 && i4 != 3 && i4 != 4) {
            throw new IllegalArgumentException(format);
        }
        throw new IllegalStateException(format);
    }

    private Name(@g String str, boolean z9) {
        if (str == null) {
            $$$reportNull$$$0(0);
        }
        this.name = str;
        this.special = z9;
    }

    @g
    public static Name guessByFirstCharacter(@g String str) {
        if (str == null) {
            $$$reportNull$$$0(8);
        }
        if (str.startsWith("<")) {
            return special(str);
        }
        return identifier(str);
    }

    @g
    public static Name identifier(@g String str) {
        if (str == null) {
            $$$reportNull$$$0(5);
        }
        return new Name(str, false);
    }

    public static boolean isValidIdentifier(@g String str) {
        if (str == null) {
            $$$reportNull$$$0(6);
        }
        if (str.isEmpty() || str.startsWith("<")) {
            return false;
        }
        for (int i4 = 0; i4 < str.length(); i4++) {
            char charAt = str.charAt(i4);
            if (charAt == '.' || charAt == '/' || charAt == '\\') {
                return false;
            }
        }
        return true;
    }

    @g
    public static Name special(@g String str) {
        if (str == null) {
            $$$reportNull$$$0(7);
        }
        if (str.startsWith("<")) {
            return new Name(str, true);
        }
        throw new IllegalArgumentException("special name must start with '<': " + str);
    }

    @g
    public String asString() {
        String str = this.name;
        if (str == null) {
            $$$reportNull$$$0(1);
        }
        return str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Name) {
            Name name = (Name) obj;
            return this.special == name.special && this.name.equals(name.name);
        }
        return false;
    }

    @g
    public String getIdentifier() {
        if (!this.special) {
            String asString = asString();
            if (asString == null) {
                $$$reportNull$$$0(2);
            }
            return asString;
        }
        throw new IllegalStateException("not identifier: " + this);
    }

    public int hashCode() {
        return (this.name.hashCode() * 31) + (this.special ? 1 : 0);
    }

    public boolean isSpecial() {
        return this.special;
    }

    public String toString() {
        return this.name;
    }

    @Override // java.lang.Comparable
    public int compareTo(Name name) {
        return this.name.compareTo(name.name);
    }
}
