.class public Lcom/googlecode/mp4parser/util/m;
.super Ljava/lang/Object;
.source "Path.java"


# static fields
.field static a:Ljava/util/regex/Pattern;

.field static final synthetic b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(....|\\.\\.)(\\[(.*)\\])?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/googlecode/mp4parser/util/m;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/coremedia/iso/boxes/d;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/googlecode/mp4parser/util/m;->b(Lcom/coremedia/iso/boxes/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lcom/coremedia/iso/boxes/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-interface {p0}, Lcom/coremedia/iso/boxes/d;->getParent()Lcom/coremedia/iso/boxes/j;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lcom/coremedia/iso/boxes/j;->y()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coremedia/iso/boxes/d;

    .line 4
    invoke-interface {v4}, Lcom/coremedia/iso/boxes/d;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0}, Lcom/coremedia/iso/boxes/d;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-ne v4, p0, :cond_3

    .line 5
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {p0}, Lcom/coremedia/iso/boxes/d;->getType()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v4, v2

    const-string p0, "/%s[%d]"

    invoke-static {p0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6
    instance-of p1, v0, Lcom/coremedia/iso/boxes/d;

    if-eqz p1, :cond_2

    .line 7
    check-cast v0, Lcom/coremedia/iso/boxes/d;

    invoke-static {v0, p0}, Lcom/googlecode/mp4parser/util/m;->b(Lcom/coremedia/iso/boxes/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static c(Lcom/coremedia/iso/boxes/d;Ljava/lang/String;)Lcom/coremedia/iso/boxes/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/coremedia/iso/boxes/d;",
            ">(",
            "Lcom/coremedia/iso/boxes/d;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, v0}, Lcom/googlecode/mp4parser/util/m;->g(Lcom/coremedia/iso/boxes/d;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coremedia/iso/boxes/d;

    :goto_0
    return-object p0
.end method

.method public static d(Lcom/coremedia/iso/boxes/j;Ljava/lang/String;)Lcom/coremedia/iso/boxes/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/coremedia/iso/boxes/d;",
            ">(",
            "Lcom/coremedia/iso/boxes/j;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, v0}, Lcom/googlecode/mp4parser/util/m;->i(Lcom/coremedia/iso/boxes/j;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coremedia/iso/boxes/d;

    :goto_0
    return-object p0
.end method

.method public static e(Lcom/googlecode/mp4parser/b;Ljava/lang/String;)Lcom/coremedia/iso/boxes/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/coremedia/iso/boxes/d;",
            ">(",
            "Lcom/googlecode/mp4parser/b;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, v0}, Lcom/googlecode/mp4parser/util/m;->j(Lcom/googlecode/mp4parser/b;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coremedia/iso/boxes/d;

    :goto_0
    return-object p0
.end method

.method public static f(Lcom/coremedia/iso/boxes/d;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/coremedia/iso/boxes/d;",
            ">(",
            "Lcom/coremedia/iso/boxes/d;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/googlecode/mp4parser/util/m;->g(Lcom/coremedia/iso/boxes/d;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static g(Lcom/coremedia/iso/boxes/d;Ljava/lang/String;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/coremedia/iso/boxes/d;",
            ">(",
            "Lcom/coremedia/iso/boxes/d;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/googlecode/mp4parser/util/m;->k(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static h(Lcom/coremedia/iso/boxes/j;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/coremedia/iso/boxes/d;",
            ">(",
            "Lcom/coremedia/iso/boxes/j;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/googlecode/mp4parser/util/m;->i(Lcom/coremedia/iso/boxes/j;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static i(Lcom/coremedia/iso/boxes/j;Ljava/lang/String;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/coremedia/iso/boxes/d;",
            ">(",
            "Lcom/coremedia/iso/boxes/j;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/googlecode/mp4parser/util/m;->k(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static j(Lcom/googlecode/mp4parser/b;Ljava/lang/String;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/coremedia/iso/boxes/d;",
            ">(",
            "Lcom/googlecode/mp4parser/b;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/googlecode/mp4parser/util/m;->k(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static k(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/coremedia/iso/boxes/d;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "/"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    :goto_0
    instance-of p1, p0, Lcom/coremedia/iso/boxes/d;

    if-nez p1, :cond_0

    move-object p1, v1

    goto :goto_1

    .line 4
    :cond_0
    check-cast p0, Lcom/coremedia/iso/boxes/d;

    invoke-interface {p0}, Lcom/coremedia/iso/boxes/d;->getParent()Lcom/coremedia/iso/boxes/j;

    move-result-object p0

    goto :goto_0

    .line 5
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 6
    instance-of p1, p0, Lcom/coremedia/iso/boxes/d;

    if-eqz p1, :cond_2

    .line 7
    check-cast p0, Lcom/coremedia/iso/boxes/d;

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 8
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Result of path expression seems to be the root container. This is not allowed!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/16 v0, 0x2f

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    const-string v3, ""

    .line 12
    :goto_2
    sget-object v0, Lcom/googlecode/mp4parser/util/m;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 14
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, ".."

    .line 15
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 16
    instance-of p1, p0, Lcom/coremedia/iso/boxes/d;

    if-eqz p1, :cond_5

    .line 17
    check-cast p0, Lcom/coremedia/iso/boxes/d;

    invoke-interface {p0}, Lcom/coremedia/iso/boxes/d;->getParent()Lcom/coremedia/iso/boxes/j;

    move-result-object p0

    invoke-static {p0, v3, p2}, Lcom/googlecode/mp4parser/util/m;->i(Lcom/coremedia/iso/boxes/j;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 18
    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 19
    :cond_6
    instance-of v2, p0, Lcom/coremedia/iso/boxes/j;

    if-eqz v2, :cond_e

    const/4 v2, 0x2

    .line 20
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x1

    if-eqz v2, :cond_7

    const/4 v2, 0x3

    .line 21
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_3

    :cond_7
    const/4 v0, -0x1

    .line 23
    :goto_3
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 24
    check-cast p0, Lcom/coremedia/iso/boxes/j;

    invoke-interface {p0}, Lcom/coremedia/iso/boxes/j;->y()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 25
    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_9

    return-object v2

    .line 26
    :cond_9
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coremedia/iso/boxes/d;

    .line 27
    invoke-interface {v5}, Lcom/coremedia/iso/boxes/d;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    if-eq v0, v4, :cond_a

    if-ne v0, v1, :cond_b

    .line 28
    :cond_a
    invoke-static {v5, v3, p2}, Lcom/googlecode/mp4parser/util/m;->g(Lcom/coremedia/iso/boxes/d;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_b
    add-int/lit8 v1, v1, 0x1

    :cond_c
    if-nez p2, :cond_d

    if-ltz v0, :cond_8

    .line 29
    :cond_d
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    return-object v2

    .line 30
    :cond_e
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 31
    :cond_f
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, " is invalid path."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static l(Lcom/coremedia/iso/boxes/d;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/googlecode/mp4parser/util/m;->f(Lcom/coremedia/iso/boxes/d;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
