package kotlin.reflect.jvm.internal.impl.name;

import java.util.Collections;
import java.util.List;
import java.util.regex.Pattern;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function1;
import m8.g;

/* loaded from: classes4.dex */
public final class FqNameUnsafe {
    private static final Name ROOT_NAME = Name.special("<root>");
    private static final Pattern SPLIT_BY_DOTS = Pattern.compile("\\.");
    private static final Function1<String, Name> STRING_TO_NAME = new Function1<String, Name>() { // from class: kotlin.reflect.jvm.internal.impl.name.FqNameUnsafe.1
        @Override // kotlin.jvm.functions.Function1
        public Name invoke(String str) {
            return Name.guessByFirstCharacter(str);
        }
    };
    @g
    private final String fqName;
    private transient FqNameUnsafe parent;
    private transient FqName safe;
    private transient Name shortName;

    private static /* synthetic */ void $$$reportNull$$$0(int i4) {
        String str;
        int i10;
        switch (i4) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 17:
                str = "@NotNull method %s.%s must not return null";
                break;
            case 9:
            case 15:
            case 16:
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i4) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 17:
                i10 = 2;
                break;
            case 9:
            case 15:
            case 16:
            default:
                i10 = 3;
                break;
        }
        Object[] objArr = new Object[i10];
        if (i4 != 1) {
            switch (i4) {
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 10:
                case 11:
                case 12:
                case 13:
                case 14:
                case 17:
                    objArr[0] = "kotlin/reflect/jvm/internal/impl/name/FqNameUnsafe";
                    break;
                case 9:
                    objArr[0] = "name";
                    break;
                case 15:
                    objArr[0] = "segment";
                    break;
                case 16:
                    objArr[0] = "shortName";
                    break;
                default:
                    objArr[0] = "fqName";
                    break;
            }
        } else {
            objArr[0] = "safe";
        }
        switch (i4) {
            case 4:
                objArr[1] = "asString";
                break;
            case 5:
            case 6:
                objArr[1] = "toSafe";
                break;
            case 7:
            case 8:
                objArr[1] = "parent";
                break;
            case 9:
            case 15:
            case 16:
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/name/FqNameUnsafe";
                break;
            case 10:
            case 11:
                objArr[1] = "shortName";
                break;
            case 12:
            case 13:
                objArr[1] = "shortNameOrSpecial";
                break;
            case 14:
                objArr[1] = "pathSegments";
                break;
            case 17:
                objArr[1] = "toString";
                break;
        }
        switch (i4) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 17:
                break;
            case 9:
                objArr[2] = "child";
                break;
            case 15:
                objArr[2] = "startsWith";
                break;
            case 16:
                objArr[2] = "topLevel";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String format = String.format(str, objArr);
        switch (i4) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 17:
                throw new IllegalStateException(format);
            case 9:
            case 15:
            case 16:
            default:
                throw new IllegalArgumentException(format);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FqNameUnsafe(@g String str, @g FqName fqName) {
        if (str == null) {
            $$$reportNull$$$0(0);
        }
        if (fqName == null) {
            $$$reportNull$$$0(1);
        }
        this.fqName = str;
        this.safe = fqName;
    }

    private void compute() {
        int lastIndexOf = this.fqName.lastIndexOf(46);
        if (lastIndexOf >= 0) {
            this.shortName = Name.guessByFirstCharacter(this.fqName.substring(lastIndexOf + 1));
            this.parent = new FqNameUnsafe(this.fqName.substring(0, lastIndexOf));
            return;
        }
        this.shortName = Name.guessByFirstCharacter(this.fqName);
        this.parent = FqName.ROOT.toUnsafe();
    }

    @g
    public static FqNameUnsafe topLevel(@g Name name) {
        if (name == null) {
            $$$reportNull$$$0(16);
        }
        return new FqNameUnsafe(name.asString(), FqName.ROOT.toUnsafe(), name);
    }

    @g
    public String asString() {
        String str = this.fqName;
        if (str == null) {
            $$$reportNull$$$0(4);
        }
        return str;
    }

    @g
    public FqNameUnsafe child(@g Name name) {
        String str;
        if (name == null) {
            $$$reportNull$$$0(9);
        }
        if (isRoot()) {
            str = name.asString();
        } else {
            str = this.fqName + "." + name.asString();
        }
        return new FqNameUnsafe(str, this, name);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof FqNameUnsafe) && this.fqName.equals(((FqNameUnsafe) obj).fqName);
    }

    public int hashCode() {
        return this.fqName.hashCode();
    }

    public boolean isRoot() {
        return this.fqName.isEmpty();
    }

    public boolean isSafe() {
        return this.safe != null || asString().indexOf(60) < 0;
    }

    @g
    public FqNameUnsafe parent() {
        FqNameUnsafe fqNameUnsafe = this.parent;
        if (fqNameUnsafe != null) {
            if (fqNameUnsafe == null) {
                $$$reportNull$$$0(7);
            }
            return fqNameUnsafe;
        } else if (!isRoot()) {
            compute();
            FqNameUnsafe fqNameUnsafe2 = this.parent;
            if (fqNameUnsafe2 == null) {
                $$$reportNull$$$0(8);
            }
            return fqNameUnsafe2;
        } else {
            throw new IllegalStateException("root");
        }
    }

    @g
    public List<Name> pathSegments() {
        List<Name> emptyList = isRoot() ? Collections.emptyList() : ArraysKt.map(SPLIT_BY_DOTS.split(this.fqName), STRING_TO_NAME);
        if (emptyList == null) {
            $$$reportNull$$$0(14);
        }
        return emptyList;
    }

    @g
    public Name shortName() {
        Name name = this.shortName;
        if (name != null) {
            if (name == null) {
                $$$reportNull$$$0(10);
            }
            return name;
        } else if (!isRoot()) {
            compute();
            Name name2 = this.shortName;
            if (name2 == null) {
                $$$reportNull$$$0(11);
            }
            return name2;
        } else {
            throw new IllegalStateException("root");
        }
    }

    @g
    public Name shortNameOrSpecial() {
        if (isRoot()) {
            Name name = ROOT_NAME;
            if (name == null) {
                $$$reportNull$$$0(12);
            }
            return name;
        }
        Name shortName = shortName();
        if (shortName == null) {
            $$$reportNull$$$0(13);
        }
        return shortName;
    }

    public boolean startsWith(@g Name name) {
        if (name == null) {
            $$$reportNull$$$0(15);
        }
        if (isRoot()) {
            return false;
        }
        int indexOf = this.fqName.indexOf(46);
        String str = this.fqName;
        String asString = name.asString();
        if (indexOf == -1) {
            indexOf = this.fqName.length();
        }
        return str.regionMatches(0, asString, 0, indexOf);
    }

    @g
    public FqName toSafe() {
        FqName fqName = this.safe;
        if (fqName != null) {
            if (fqName == null) {
                $$$reportNull$$$0(5);
            }
            return fqName;
        }
        FqName fqName2 = new FqName(this);
        this.safe = fqName2;
        return fqName2;
    }

    @g
    public String toString() {
        String asString = isRoot() ? ROOT_NAME.asString() : this.fqName;
        if (asString == null) {
            $$$reportNull$$$0(17);
        }
        return asString;
    }

    public FqNameUnsafe(@g String str) {
        if (str == null) {
            $$$reportNull$$$0(2);
        }
        this.fqName = str;
    }

    private FqNameUnsafe(@g String str, FqNameUnsafe fqNameUnsafe, Name name) {
        if (str == null) {
            $$$reportNull$$$0(3);
        }
        this.fqName = str;
        this.parent = fqNameUnsafe;
        this.shortName = name;
    }
}
