.class public Lshaded/org/apache/commons/codec/language/bm/d;
.super Ljava/lang/Object;
.source "PhoneticEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lshaded/org/apache/commons/codec/language/bm/d$c;,
        Lshaded/org/apache/commons/codec/language/bm/d$b;
    }
.end annotation


# static fields
.field private static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lshaded/org/apache/commons/codec/language/bm/NameType;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final g:I = 0x14


# instance fields
.field private final a:Lshaded/org/apache/commons/codec/language/bm/b;

.field private final b:Lshaded/org/apache/commons/codec/language/bm/NameType;

.field private final c:Lshaded/org/apache/commons/codec/language/bm/RuleType;

.field private final d:Z

.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lshaded/org/apache/commons/codec/language/bm/NameType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lshaded/org/apache/commons/codec/language/bm/d;->f:Ljava/util/Map;

    .line 2
    sget-object v1, Lshaded/org/apache/commons/codec/language/bm/NameType;->ASHKENAZI:Lshaded/org/apache/commons/codec/language/bm/NameType;

    new-instance v2, Ljava/util/HashSet;

    const-string v3, "bar"

    const-string v4, "ben"

    const-string v5, "da"

    const-string v6, "de"

    const-string v7, "van"

    const-string v8, "von"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 5
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v1, Lshaded/org/apache/commons/codec/language/bm/NameType;->SEPHARDIC:Lshaded/org/apache/commons/codec/language/bm/NameType;

    new-instance v2, Ljava/util/HashSet;

    const-string v3, "al"

    const-string v4, "el"

    const-string v5, "da"

    const-string v6, "dal"

    const-string v7, "de"

    const-string v8, "del"

    const-string v9, "dela"

    const-string v10, "de la"

    const-string v11, "della"

    const-string v12, "des"

    const-string v13, "di"

    const-string v14, "do"

    const-string v15, "dos"

    const-string v16, "du"

    const-string v17, "van"

    const-string v18, "von"

    filled-new-array/range {v3 .. v18}, [Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 8
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 9
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v1, Lshaded/org/apache/commons/codec/language/bm/NameType;->GENERIC:Lshaded/org/apache/commons/codec/language/bm/NameType;

    new-instance v2, Ljava/util/HashSet;

    const-string v3, "da"

    const-string v4, "dal"

    const-string v5, "de"

    const-string v6, "del"

    const-string v7, "dela"

    const-string v8, "de la"

    const-string v9, "della"

    const-string v10, "des"

    const-string v11, "di"

    const-string v12, "do"

    const-string v13, "dos"

    const-string v14, "du"

    const-string v15, "van"

    const-string v16, "von"

    filled-new-array/range {v3 .. v16}, [Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 12
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 13
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lshaded/org/apache/commons/codec/language/bm/NameType;Lshaded/org/apache/commons/codec/language/bm/RuleType;Z)V
    .locals 1

    const/16 v0, 0x14

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lshaded/org/apache/commons/codec/language/bm/d;-><init>(Lshaded/org/apache/commons/codec/language/bm/NameType;Lshaded/org/apache/commons/codec/language/bm/RuleType;ZI)V

    return-void
.end method

.method public constructor <init>(Lshaded/org/apache/commons/codec/language/bm/NameType;Lshaded/org/apache/commons/codec/language/bm/RuleType;ZI)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lshaded/org/apache/commons/codec/language/bm/RuleType;->RULES:Lshaded/org/apache/commons/codec/language/bm/RuleType;

    if-eq p2, v0, :cond_0

    .line 4
    iput-object p1, p0, Lshaded/org/apache/commons/codec/language/bm/d;->b:Lshaded/org/apache/commons/codec/language/bm/NameType;

    .line 5
    iput-object p2, p0, Lshaded/org/apache/commons/codec/language/bm/d;->c:Lshaded/org/apache/commons/codec/language/bm/RuleType;

    .line 6
    iput-boolean p3, p0, Lshaded/org/apache/commons/codec/language/bm/d;->d:Z

    .line 7
    invoke-static {p1}, Lshaded/org/apache/commons/codec/language/bm/b;->c(Lshaded/org/apache/commons/codec/language/bm/NameType;)Lshaded/org/apache/commons/codec/language/bm/b;

    move-result-object p1

    iput-object p1, p0, Lshaded/org/apache/commons/codec/language/bm/d;->a:Lshaded/org/apache/commons/codec/language/bm/b;

    .line 8
    iput p4, p0, Lshaded/org/apache/commons/codec/language/bm/d;->e:I

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ruleType must not be "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lshaded/org/apache/commons/codec/language/bm/d$b;Ljava/util/Map;)Lshaded/org/apache/commons/codec/language/bm/d$b;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lshaded/org/apache/commons/codec/language/bm/d$b;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lshaded/org/apache/commons/codec/language/bm/f;",
            ">;>;)",
            "Lshaded/org/apache/commons/codec/language/bm/d$b;"
        }
    .end annotation

    const-string v0, "finalRules can not be null"

    .line 1
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Lshaded/org/apache/commons/codec/language/bm/f$k;->c:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 4
    invoke-virtual {p1}, Lshaded/org/apache/commons/codec/language/bm/d$b;->d()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lshaded/org/apache/commons/codec/language/bm/f$k;

    .line 5
    invoke-virtual {v1}, Lshaded/org/apache/commons/codec/language/bm/f$k;->d()Lshaded/org/apache/commons/codec/language/bm/c$c;

    move-result-object v2

    invoke-static {v2}, Lshaded/org/apache/commons/codec/language/bm/d$b;->c(Lshaded/org/apache/commons/codec/language/bm/c$c;)Lshaded/org/apache/commons/codec/language/bm/d$b;

    move-result-object v2

    .line 6
    invoke-virtual {v1}, Lshaded/org/apache/commons/codec/language/bm/f$k;->e()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    move-object v6, v2

    const/4 v2, 0x0

    .line 7
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 8
    new-instance v9, Lshaded/org/apache/commons/codec/language/bm/d$c;

    iget v8, p0, Lshaded/org/apache/commons/codec/language/bm/d;->e:I

    move-object v3, v9

    move-object v4, p2

    move-object v5, v1

    move v7, v2

    invoke-direct/range {v3 .. v8}, Lshaded/org/apache/commons/codec/language/bm/d$c;-><init>(Ljava/util/Map;Ljava/lang/CharSequence;Lshaded/org/apache/commons/codec/language/bm/d$b;II)V

    .line 9
    invoke-virtual {v9}, Lshaded/org/apache/commons/codec/language/bm/d$c;->c()Lshaded/org/apache/commons/codec/language/bm/d$c;

    move-result-object v3

    .line 10
    invoke-virtual {v3}, Lshaded/org/apache/commons/codec/language/bm/d$c;->d()Z

    move-result v4

    .line 11
    invoke-virtual {v3}, Lshaded/org/apache/commons/codec/language/bm/d$c;->b()Lshaded/org/apache/commons/codec/language/bm/d$b;

    move-result-object v6

    if-nez v4, :cond_2

    add-int/lit8 v4, v2, 0x1

    .line 12
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v6, v2}, Lshaded/org/apache/commons/codec/language/bm/d$b;->a(Ljava/lang/CharSequence;)V

    .line 13
    :cond_2
    invoke-virtual {v3}, Lshaded/org/apache/commons/codec/language/bm/d$c;->a()I

    move-result v2

    goto :goto_0

    .line 14
    :cond_3
    invoke-virtual {v6}, Lshaded/org/apache/commons/codec/language/bm/d$b;->d()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lshaded/org/apache/commons/codec/language/bm/f$k;

    .line 15
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 16
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lshaded/org/apache/commons/codec/language/bm/f$k;

    .line 17
    invoke-virtual {v2}, Lshaded/org/apache/commons/codec/language/bm/f$k;->d()Lshaded/org/apache/commons/codec/language/bm/c$c;

    move-result-object v2

    invoke-virtual {v3, v2}, Lshaded/org/apache/commons/codec/language/bm/f$k;->g(Lshaded/org/apache/commons/codec/language/bm/c$c;)Lshaded/org/apache/commons/codec/language/bm/f$k;

    move-result-object v2

    .line 18
    invoke-interface {v0, v2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 19
    :cond_4
    invoke-interface {v0, v2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 20
    :cond_5
    new-instance p1, Lshaded/org/apache/commons/codec/language/bm/d$b;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lshaded/org/apache/commons/codec/language/bm/d$b;-><init>(Ljava/util/Set;Lshaded/org/apache/commons/codec/language/bm/d$a;)V

    return-object p1
.end method

.method private static i(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lshaded/org/apache/commons/codec/language/bm/d;->a:Lshaded/org/apache/commons/codec/language/bm/b;

    invoke-virtual {v0, p1}, Lshaded/org/apache/commons/codec/language/bm/b;->b(Ljava/lang/String;)Lshaded/org/apache/commons/codec/language/bm/c$c;

    move-result-object v0

    .line 2
    invoke-virtual {p0, p1, v0}, Lshaded/org/apache/commons/codec/language/bm/d;->c(Ljava/lang/String;Lshaded/org/apache/commons/codec/language/bm/c$c;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;Lshaded/org/apache/commons/codec/language/bm/c$c;)Ljava/lang/String;
    .locals 13

    .line 1
    iget-object v0, p0, Lshaded/org/apache/commons/codec/language/bm/d;->b:Lshaded/org/apache/commons/codec/language/bm/NameType;

    sget-object v1, Lshaded/org/apache/commons/codec/language/bm/RuleType;->RULES:Lshaded/org/apache/commons/codec/language/bm/RuleType;

    invoke-static {v0, v1, p2}, Lshaded/org/apache/commons/codec/language/bm/f;->l(Lshaded/org/apache/commons/codec/language/bm/NameType;Lshaded/org/apache/commons/codec/language/bm/RuleType;Lshaded/org/apache/commons/codec/language/bm/c$c;)Ljava/util/Map;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lshaded/org/apache/commons/codec/language/bm/d;->b:Lshaded/org/apache/commons/codec/language/bm/NameType;

    iget-object v2, p0, Lshaded/org/apache/commons/codec/language/bm/d;->c:Lshaded/org/apache/commons/codec/language/bm/RuleType;

    const-string v3, "common"

    invoke-static {v1, v2, v3}, Lshaded/org/apache/commons/codec/language/bm/f;->k(Lshaded/org/apache/commons/codec/language/bm/NameType;Lshaded/org/apache/commons/codec/language/bm/RuleType;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lshaded/org/apache/commons/codec/language/bm/d;->b:Lshaded/org/apache/commons/codec/language/bm/NameType;

    iget-object v3, p0, Lshaded/org/apache/commons/codec/language/bm/d;->c:Lshaded/org/apache/commons/codec/language/bm/RuleType;

    invoke-static {v2, v3, p2}, Lshaded/org/apache/commons/codec/language/bm/f;->l(Lshaded/org/apache/commons/codec/language/bm/NameType;Lshaded/org/apache/commons/codec/language/bm/RuleType;Lshaded/org/apache/commons/codec/language/bm/c$c;)Ljava/util/Map;

    move-result-object v8

    .line 4
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x2d

    const/16 v3, 0x20

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 5
    iget-object v2, p0, Lshaded/org/apache/commons/codec/language/bm/d;->b:Lshaded/org/apache/commons/codec/language/bm/NameType;

    sget-object v3, Lshaded/org/apache/commons/codec/language/bm/NameType;->GENERIC:Lshaded/org/apache/commons/codec/language/bm/NameType;

    const-string v4, " "

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v2, v3, :cond_2

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, ")"

    const-string v9, ")-("

    const-string v10, "("

    if-lt v2, v6, :cond_0

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v11, "d\'"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "d"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lshaded/org/apache/commons/codec/language/bm/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lshaded/org/apache/commons/codec/language/bm/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 10
    :cond_0
    sget-object v2, Lshaded/org/apache/commons/codec/language/bm/d;->f:Ljava/util/Map;

    iget-object v11, p0, Lshaded/org/apache/commons/codec/language/bm/d;->b:Lshaded/org/apache/commons/codec/language/bm/NameType;

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 11
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 12
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, v7

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 13
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lshaded/org/apache/commons/codec/language/bm/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lshaded/org/apache/commons/codec/language/bm/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v2, "\\s+"

    .line 15
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 16
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 17
    sget-object v3, Lshaded/org/apache/commons/codec/language/bm/d$a;->a:[I

    iget-object v9, p0, Lshaded/org/apache/commons/codec/language/bm/d;->b:Lshaded/org/apache/commons/codec/language/bm/NameType;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v3, v3, v9

    if-eq v3, v7, :cond_5

    if-eq v3, v6, :cond_4

    const/4 v6, 0x3

    if-ne v3, v6, :cond_3

    .line 18
    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 19
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unreachable case: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lshaded/org/apache/commons/codec/language/bm/d;->b:Lshaded/org/apache/commons/codec/language/bm/NameType;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_4
    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 21
    sget-object v3, Lshaded/org/apache/commons/codec/language/bm/d;->f:Ljava/util/Map;

    iget-object v6, p0, Lshaded/org/apache/commons/codec/language/bm/d;->b:Lshaded/org/apache/commons/codec/language/bm/NameType;

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v2, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 22
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v9, "\'"

    .line 23
    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 24
    array-length v9, v6

    sub-int/2addr v9, v7

    aget-object v6, v6, v9

    .line 25
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 26
    :cond_6
    sget-object v3, Lshaded/org/apache/commons/codec/language/bm/d;->f:Ljava/util/Map;

    iget-object v6, p0, Lshaded/org/apache/commons/codec/language/bm/d;->b:Lshaded/org/apache/commons/codec/language/bm/NameType;

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v2, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 27
    :goto_1
    iget-boolean v3, p0, Lshaded/org/apache/commons/codec/language/bm/d;->d:Z

    if-eqz v3, :cond_7

    .line 28
    invoke-static {v2, v4}, Lshaded/org/apache/commons/codec/language/bm/d;->i(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 29
    :cond_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v7, :cond_9

    .line 30
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 31
    :goto_2
    invoke-static {p2}, Lshaded/org/apache/commons/codec/language/bm/d$b;->c(Lshaded/org/apache/commons/codec/language/bm/c$c;)Lshaded/org/apache/commons/codec/language/bm/d$b;

    move-result-object p2

    move-object v5, p2

    const/4 v6, 0x0

    .line 32
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-ge v6, p2, :cond_8

    .line 33
    new-instance p2, Lshaded/org/apache/commons/codec/language/bm/d$c;

    iget v7, p0, Lshaded/org/apache/commons/codec/language/bm/d;->e:I

    move-object v2, p2

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lshaded/org/apache/commons/codec/language/bm/d$c;-><init>(Ljava/util/Map;Ljava/lang/CharSequence;Lshaded/org/apache/commons/codec/language/bm/d$b;II)V

    .line 34
    invoke-virtual {p2}, Lshaded/org/apache/commons/codec/language/bm/d$c;->c()Lshaded/org/apache/commons/codec/language/bm/d$c;

    move-result-object p2

    .line 35
    invoke-virtual {p2}, Lshaded/org/apache/commons/codec/language/bm/d$c;->a()I

    move-result v6

    .line 36
    invoke-virtual {p2}, Lshaded/org/apache/commons/codec/language/bm/d$c;->b()Lshaded/org/apache/commons/codec/language/bm/d$b;

    move-result-object v5

    goto :goto_3

    .line 37
    :cond_8
    invoke-direct {p0, v5, v1}, Lshaded/org/apache/commons/codec/language/bm/d;->a(Lshaded/org/apache/commons/codec/language/bm/d$b;Ljava/util/Map;)Lshaded/org/apache/commons/codec/language/bm/d$b;

    move-result-object p1

    .line 38
    invoke-direct {p0, p1, v8}, Lshaded/org/apache/commons/codec/language/bm/d;->a(Lshaded/org/apache/commons/codec/language/bm/d$b;Ljava/util/Map;)Lshaded/org/apache/commons/codec/language/bm/d$b;

    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lshaded/org/apache/commons/codec/language/bm/d$b;->e()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 40
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "-"

    .line 42
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lshaded/org/apache/commons/codec/language/bm/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 43
    :cond_a
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d()Lshaded/org/apache/commons/codec/language/bm/b;
    .locals 1

    iget-object v0, p0, Lshaded/org/apache/commons/codec/language/bm/d;->a:Lshaded/org/apache/commons/codec/language/bm/b;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lshaded/org/apache/commons/codec/language/bm/d;->e:I

    return v0
.end method

.method public f()Lshaded/org/apache/commons/codec/language/bm/NameType;
    .locals 1

    iget-object v0, p0, Lshaded/org/apache/commons/codec/language/bm/d;->b:Lshaded/org/apache/commons/codec/language/bm/NameType;

    return-object v0
.end method

.method public g()Lshaded/org/apache/commons/codec/language/bm/RuleType;
    .locals 1

    iget-object v0, p0, Lshaded/org/apache/commons/codec/language/bm/d;->c:Lshaded/org/apache/commons/codec/language/bm/RuleType;

    return-object v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lshaded/org/apache/commons/codec/language/bm/d;->d:Z

    return v0
.end method
