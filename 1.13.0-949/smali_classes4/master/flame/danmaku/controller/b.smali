.class public Lmaster/flame/danmaku/controller/b;
.super Ljava/lang/Object;
.source "DanmakuFilters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmaster/flame/danmaku/controller/b$g;,
        Lmaster/flame/danmaku/controller/b$f;,
        Lmaster/flame/danmaku/controller/b$b;,
        Lmaster/flame/danmaku/controller/b$d;,
        Lmaster/flame/danmaku/controller/b$l;,
        Lmaster/flame/danmaku/controller/b$m;,
        Lmaster/flame/danmaku/controller/b$k;,
        Lmaster/flame/danmaku/controller/b$i;,
        Lmaster/flame/danmaku/controller/b$c;,
        Lmaster/flame/danmaku/controller/b$h;,
        Lmaster/flame/danmaku/controller/b$j;,
        Lmaster/flame/danmaku/controller/b$a;,
        Lmaster/flame/danmaku/controller/b$e;
    }
.end annotation


# static fields
.field public static final f:I = 0x1

.field public static final g:I = 0x2

.field public static final h:I = 0x4

.field public static final i:I = 0x8

.field public static final j:I = 0x10

.field public static final k:I = 0x20

.field public static final l:I = 0x40

.field public static final m:I = 0x80

.field public static final n:I = 0x100

.field public static final o:I = 0x200

.field public static final p:Ljava/lang/String; = "1010_Filter"

.field public static final q:Ljava/lang/String; = "1011_Filter"

.field public static final r:Ljava/lang/String; = "1012_Filter"

.field public static final s:Ljava/lang/String; = "1013_Filter"

.field public static final t:Ljava/lang/String; = "1014_Filter"

.field public static final u:Ljava/lang/String; = "1015_Filter"

.field public static final v:Ljava/lang/String; = "1016_Filter"

.field public static final w:Ljava/lang/String; = "1017_Filter"

.field public static final x:Ljava/lang/String; = "1018_Filter"

.field public static final y:Ljava/lang/String; = "1019_Filter"

.field public static final z:Ljava/lang/String; = "2000_Primary_Custom_Filter"


# instance fields
.field public final a:Ljava/lang/Exception;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmaster/flame/danmaku/controller/b$e<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lmaster/flame/danmaku/controller/b$e<",
            "*>;>;"
        }
    .end annotation
.end field

.field d:[Lmaster/flame/danmaku/controller/b$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lmaster/flame/danmaku/controller/b$e<",
            "*>;"
        }
    .end annotation
.end field

.field e:[Lmaster/flame/danmaku/controller/b$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lmaster/flame/danmaku/controller/b$e<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "not suuport this filter tag"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmaster/flame/danmaku/controller/b;->a:Ljava/lang/Exception;

    .line 3
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 4
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    iput-object v0, p0, Lmaster/flame/danmaku/controller/b;->b:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 6
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v0

    iput-object v0, p0, Lmaster/flame/danmaku/controller/b;->c:Ljava/util/Map;

    const/4 v0, 0x0

    new-array v1, v0, [Lmaster/flame/danmaku/controller/b$e;

    .line 7
    iput-object v1, p0, Lmaster/flame/danmaku/controller/b;->d:[Lmaster/flame/danmaku/controller/b$e;

    new-array v0, v0, [Lmaster/flame/danmaku/controller/b$e;

    .line 8
    iput-object v0, p0, Lmaster/flame/danmaku/controller/b;->e:[Lmaster/flame/danmaku/controller/b$e;

    return-void
.end method

.method private k()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/b;->a:Ljava/lang/Exception;

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/b;->d:[Lmaster/flame/danmaku/controller/b$e;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    .line 2
    invoke-interface {v4}, Lmaster/flame/danmaku/controller/b$e;->clear()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/b;->e:[Lmaster/flame/danmaku/controller/b$e;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    if-eqz v3, :cond_2

    .line 4
    invoke-interface {v3}, Lmaster/flame/danmaku/controller/b$e;->clear()V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public b(Lmaster/flame/danmaku/danmaku/model/d;IILmaster/flame/danmaku/danmaku/model/f;ZLmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)V
    .locals 11

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lmaster/flame/danmaku/controller/b;->d:[Lmaster/flame/danmaku/controller/b$e;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    move-object v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    .line 2
    invoke-interface/range {v4 .. v10}, Lmaster/flame/danmaku/controller/b$e;->b(Lmaster/flame/danmaku/danmaku/model/d;IILmaster/flame/danmaku/danmaku/model/f;ZLmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)Z

    move-result v4

    move-object/from16 v5, p6

    .line 3
    iget-object v6, v5, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->y:Lmaster/flame/danmaku/danmaku/model/j;

    iget v6, v6, Lmaster/flame/danmaku/danmaku/model/j;->c:I

    move-object v7, p1

    iput v6, v7, Lmaster/flame/danmaku/danmaku/model/d;->H:I

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_0
    move-object v7, p1

    move-object/from16 v5, p6

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public c(Lmaster/flame/danmaku/danmaku/model/d;IILmaster/flame/danmaku/danmaku/model/f;ZLmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)Z
    .locals 12

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lmaster/flame/danmaku/controller/b;->e:[Lmaster/flame/danmaku/controller/b$e;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    if-eqz v5, :cond_0

    move-object v6, p1

    move v7, p2

    move v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    .line 2
    invoke-interface/range {v5 .. v11}, Lmaster/flame/danmaku/controller/b$e;->b(Lmaster/flame/danmaku/danmaku/model/d;IILmaster/flame/danmaku/danmaku/model/f;ZLmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)Z

    move-result v5

    move-object/from16 v6, p6

    .line 3
    iget-object v7, v6, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->y:Lmaster/flame/danmaku/danmaku/model/j;

    iget v7, v7, Lmaster/flame/danmaku/danmaku/model/j;->c:I

    move-object v8, p1

    iput v7, v8, Lmaster/flame/danmaku/danmaku/model/d;->H:I

    if-eqz v5, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_0
    move-object v8, p1

    move-object/from16 v6, p6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public d(Ljava/lang/String;)Lmaster/flame/danmaku/controller/b$e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lmaster/flame/danmaku/controller/b$e<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmaster/flame/danmaku/controller/b;->e(Ljava/lang/String;Z)Lmaster/flame/danmaku/controller/b$e;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;Z)Lmaster/flame/danmaku/controller/b$e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lmaster/flame/danmaku/controller/b$e<",
            "*>;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/b;->b:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/b;->c:Ljava/util/Map;

    :goto_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmaster/flame/danmaku/controller/b$e;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0, p1, p2}, Lmaster/flame/danmaku/controller/b;->g(Ljava/lang/String;Z)Lmaster/flame/danmaku/controller/b$e;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public f(Ljava/lang/String;)Lmaster/flame/danmaku/controller/b$e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lmaster/flame/danmaku/controller/b$e<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmaster/flame/danmaku/controller/b;->g(Ljava/lang/String;Z)Lmaster/flame/danmaku/controller/b$e;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/String;Z)Lmaster/flame/danmaku/controller/b$e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lmaster/flame/danmaku/controller/b$e<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/b;->k()V

    return-object v0

    .line 2
    :cond_0
    iget-object v1, p0, Lmaster/flame/danmaku/controller/b;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmaster/flame/danmaku/controller/b$e;

    if-nez v1, :cond_a

    const-string v2, "1010_Filter"

    .line 3
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    new-instance v1, Lmaster/flame/danmaku/controller/b$j;

    invoke-direct {v1}, Lmaster/flame/danmaku/controller/b$j;-><init>()V

    goto/16 :goto_0

    :cond_1
    const-string v2, "1011_Filter"

    .line 5
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    new-instance v1, Lmaster/flame/danmaku/controller/b$h;

    invoke-direct {v1}, Lmaster/flame/danmaku/controller/b$h;-><init>()V

    goto/16 :goto_0

    :cond_2
    const-string v2, "1012_Filter"

    .line 7
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 8
    new-instance v1, Lmaster/flame/danmaku/controller/b$c;

    invoke-direct {v1}, Lmaster/flame/danmaku/controller/b$c;-><init>()V

    goto :goto_0

    :cond_3
    const-string v2, "1013_Filter"

    .line 9
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 10
    new-instance v1, Lmaster/flame/danmaku/controller/b$i;

    invoke-direct {v1}, Lmaster/flame/danmaku/controller/b$i;-><init>()V

    goto :goto_0

    :cond_4
    const-string v2, "1014_Filter"

    .line 11
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 12
    new-instance v1, Lmaster/flame/danmaku/controller/b$m;

    invoke-direct {v1}, Lmaster/flame/danmaku/controller/b$m;-><init>()V

    goto :goto_0

    :cond_5
    const-string v2, "1015_Filter"

    .line 13
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 14
    new-instance v1, Lmaster/flame/danmaku/controller/b$l;

    invoke-direct {v1}, Lmaster/flame/danmaku/controller/b$l;-><init>()V

    goto :goto_0

    :cond_6
    const-string v2, "1016_Filter"

    .line 15
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 16
    new-instance v1, Lmaster/flame/danmaku/controller/b$d;

    invoke-direct {v1}, Lmaster/flame/danmaku/controller/b$d;-><init>()V

    goto :goto_0

    :cond_7
    const-string v2, "1017_Filter"

    .line 17
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 18
    new-instance v1, Lmaster/flame/danmaku/controller/b$b;

    invoke-direct {v1}, Lmaster/flame/danmaku/controller/b$b;-><init>()V

    goto :goto_0

    :cond_8
    const-string v2, "1018_Filter"

    .line 19
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 20
    new-instance v1, Lmaster/flame/danmaku/controller/b$f;

    invoke-direct {v1}, Lmaster/flame/danmaku/controller/b$f;-><init>()V

    goto :goto_0

    :cond_9
    const-string v2, "1019_Filter"

    .line 21
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 22
    new-instance v1, Lmaster/flame/danmaku/controller/b$g;

    invoke-direct {v1}, Lmaster/flame/danmaku/controller/b$g;-><init>()V

    :cond_a
    :goto_0
    if-nez v1, :cond_b

    .line 23
    invoke-direct {p0}, Lmaster/flame/danmaku/controller/b;->k()V

    return-object v0

    .line 24
    :cond_b
    invoke-interface {v1, v0}, Lmaster/flame/danmaku/controller/b$e;->a(Ljava/lang/Object;)V

    if-eqz p2, :cond_c

    .line 25
    iget-object p2, p0, Lmaster/flame/danmaku/controller/b;->b:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object p1, p0, Lmaster/flame/danmaku/controller/b;->b:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    iget-object p2, p0, Lmaster/flame/danmaku/controller/b;->d:[Lmaster/flame/danmaku/controller/b$e;

    invoke-interface {p1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lmaster/flame/danmaku/controller/b$e;

    iput-object p1, p0, Lmaster/flame/danmaku/controller/b;->d:[Lmaster/flame/danmaku/controller/b$e;

    goto :goto_1

    .line 27
    :cond_c
    iget-object p2, p0, Lmaster/flame/danmaku/controller/b;->c:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object p1, p0, Lmaster/flame/danmaku/controller/b;->c:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    iget-object p2, p0, Lmaster/flame/danmaku/controller/b;->e:[Lmaster/flame/danmaku/controller/b$e;

    invoke-interface {p1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lmaster/flame/danmaku/controller/b$e;

    iput-object p1, p0, Lmaster/flame/danmaku/controller/b;->e:[Lmaster/flame/danmaku/controller/b$e;

    :goto_1
    return-object v1
.end method

.method public h(Lmaster/flame/danmaku/controller/b$a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/b;->b:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2000_Primary_Custom_Filter_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Lmaster/flame/danmaku/controller/b;->b:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    iget-object v0, p0, Lmaster/flame/danmaku/controller/b;->d:[Lmaster/flame/danmaku/controller/b$e;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lmaster/flame/danmaku/controller/b$e;

    iput-object p1, p0, Lmaster/flame/danmaku/controller/b;->d:[Lmaster/flame/danmaku/controller/b$e;

    return-void
.end method

.method public i()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lmaster/flame/danmaku/controller/b;->a()V

    .line 2
    iget-object v0, p0, Lmaster/flame/danmaku/controller/b;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    new-array v1, v0, [Lmaster/flame/danmaku/controller/b$e;

    .line 3
    iput-object v1, p0, Lmaster/flame/danmaku/controller/b;->d:[Lmaster/flame/danmaku/controller/b$e;

    .line 4
    iget-object v1, p0, Lmaster/flame/danmaku/controller/b;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    new-array v0, v0, [Lmaster/flame/danmaku/controller/b$e;

    .line 5
    iput-object v0, p0, Lmaster/flame/danmaku/controller/b;->e:[Lmaster/flame/danmaku/controller/b$e;

    return-void
.end method

.method public j()V
    .locals 5

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/b;->d:[Lmaster/flame/danmaku/controller/b$e;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    .line 2
    invoke-interface {v4}, Lmaster/flame/danmaku/controller/b$e;->reset()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/b;->e:[Lmaster/flame/danmaku/controller/b$e;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    if-eqz v3, :cond_2

    .line 4
    invoke-interface {v3}, Lmaster/flame/danmaku/controller/b$e;->reset()V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmaster/flame/danmaku/controller/b;->m(Ljava/lang/String;Z)V

    return-void
.end method

.method public m(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/b;->b:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/controller/b;->c:Ljava/util/Map;

    :goto_0
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmaster/flame/danmaku/controller/b$e;

    if-eqz p1, :cond_2

    .line 2
    invoke-interface {p1}, Lmaster/flame/danmaku/controller/b$e;->clear()V

    if-eqz p2, :cond_1

    .line 3
    iget-object p1, p0, Lmaster/flame/danmaku/controller/b;->b:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    iget-object p2, p0, Lmaster/flame/danmaku/controller/b;->d:[Lmaster/flame/danmaku/controller/b$e;

    invoke-interface {p1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lmaster/flame/danmaku/controller/b$e;

    iput-object p1, p0, Lmaster/flame/danmaku/controller/b;->d:[Lmaster/flame/danmaku/controller/b$e;

    goto :goto_1

    .line 4
    :cond_1
    iget-object p1, p0, Lmaster/flame/danmaku/controller/b;->c:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    iget-object p2, p0, Lmaster/flame/danmaku/controller/b;->e:[Lmaster/flame/danmaku/controller/b$e;

    invoke-interface {p1, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lmaster/flame/danmaku/controller/b$e;

    iput-object p1, p0, Lmaster/flame/danmaku/controller/b;->e:[Lmaster/flame/danmaku/controller/b$e;

    :cond_2
    :goto_1
    return-void
.end method

.method public n(Lmaster/flame/danmaku/controller/b$a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lmaster/flame/danmaku/controller/b;->b:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2000_Primary_Custom_Filter_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Lmaster/flame/danmaku/controller/b;->b:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    iget-object v0, p0, Lmaster/flame/danmaku/controller/b;->d:[Lmaster/flame/danmaku/controller/b$e;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lmaster/flame/danmaku/controller/b$e;

    iput-object p1, p0, Lmaster/flame/danmaku/controller/b;->d:[Lmaster/flame/danmaku/controller/b$e;

    return-void
.end method
