.class public Lcom/koushikdutta/async/future/Converter;
.super Ljava/lang/Object;
.source "Converter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/future/Converter$ConverterEntries;,
        Lcom/koushikdutta/async/future/Converter$ConverterEntry;,
        Lcom/koushikdutta/async/future/Converter$PathInfo;,
        Lcom/koushikdutta/async/future/Converter$Converters;,
        Lcom/koushikdutta/async/future/Converter$ConverterTransformers;,
        Lcom/koushikdutta/async/future/Converter$MimedType;,
        Lcom/koushikdutta/async/future/Converter$EnsureHashMap;,
        Lcom/koushikdutta/async/future/Converter$MultiTransformer;,
        Lcom/koushikdutta/async/future/Converter$MimedData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String; = "*/*"

.field public static final e:Lcom/koushikdutta/async/future/Converter$ConverterEntries;


# instance fields
.field a:Lcom/koushikdutta/async/future/Converter$Converters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/future/Converter$Converters<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/koushikdutta/async/future/MultiFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/future/MultiFuture<",
            "TR;>;"
        }
    .end annotation
.end field

.field c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v6, Lcom/koushikdutta/async/future/Converter$ConverterEntries;

    invoke-direct {v6}, Lcom/koushikdutta/async/future/Converter$ConverterEntries;-><init>()V

    sput-object v6, Lcom/koushikdutta/async/future/Converter;->e:Lcom/koushikdutta/async/future/Converter$ConverterEntries;

    .line 2
    sget-object v7, Lcom/koushikdutta/async/future/d;->a:Lcom/koushikdutta/async/future/d;

    .line 3
    sget-object v8, Lcom/koushikdutta/async/future/j;->a:Lcom/koushikdutta/async/future/j;

    .line 4
    sget-object v9, Lcom/koushikdutta/async/future/i;->a:Lcom/koushikdutta/async/future/i;

    .line 5
    sget-object v10, Lcom/koushikdutta/async/future/k;->a:Lcom/koushikdutta/async/future/k;

    .line 6
    sget-object v11, Lcom/koushikdutta/async/future/e;->a:Lcom/koushikdutta/async/future/e;

    .line 7
    sget-object v5, Lcom/koushikdutta/async/future/n;->a:Lcom/koushikdutta/async/future/n;

    .line 8
    sget-object v12, Lcom/koushikdutta/async/future/m;->a:Lcom/koushikdutta/async/future/m;

    .line 9
    sget-object v13, Lcom/koushikdutta/async/future/l;->a:Lcom/koushikdutta/async/future/l;

    .line 10
    sget-object v14, Lcom/koushikdutta/async/future/b;->a:Lcom/koushikdutta/async/future/b;

    .line 11
    sget-object v15, Lcom/koushikdutta/async/future/c;->a:Lcom/koushikdutta/async/future/c;

    .line 12
    const-class v1, Ljava/nio/ByteBuffer;

    const-class v3, Lcom/koushikdutta/async/ByteBufferList;

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lcom/koushikdutta/async/future/Converter$ConverterEntries;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Lcom/koushikdutta/async/future/TypeConverter;)V

    .line 13
    const-class v1, Ljava/lang/String;

    const-class v3, [B

    const-string v4, "text/plain"

    move-object v5, v12

    invoke-virtual/range {v0 .. v5}, Lcom/koushikdutta/async/future/Converter$ConverterEntries;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Lcom/koushikdutta/async/future/TypeConverter;)V

    .line 14
    const-class v1, [B

    const-class v3, Lcom/koushikdutta/async/ByteBufferList;

    const/4 v4, 0x0

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/koushikdutta/async/future/Converter$ConverterEntries;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Lcom/koushikdutta/async/future/TypeConverter;)V

    .line 15
    const-class v1, Lcom/koushikdutta/async/ByteBufferList;

    const-class v3, [B

    move-object v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/koushikdutta/async/future/Converter$ConverterEntries;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Lcom/koushikdutta/async/future/TypeConverter;)V

    .line 16
    const-class v1, Lcom/koushikdutta/async/ByteBufferList;

    const-class v3, Ljava/nio/ByteBuffer;

    move-object v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/koushikdutta/async/future/Converter$ConverterEntries;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Lcom/koushikdutta/async/future/TypeConverter;)V

    .line 17
    const-class v1, Lcom/koushikdutta/async/ByteBufferList;

    const-class v3, Ljava/lang/String;

    const-string v2, "text/plain"

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/koushikdutta/async/future/Converter$ConverterEntries;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Lcom/koushikdutta/async/future/TypeConverter;)V

    .line 18
    const-class v1, [B

    const-class v3, Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    move-object v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/koushikdutta/async/future/Converter$ConverterEntries;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Lcom/koushikdutta/async/future/TypeConverter;)V

    .line 19
    const-class v1, Ljava/lang/String;

    const-class v3, Lorg/json/JSONObject;

    const-string v2, "application/json"

    move-object v5, v13

    invoke-virtual/range {v0 .. v5}, Lcom/koushikdutta/async/future/Converter$ConverterEntries;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Lcom/koushikdutta/async/future/TypeConverter;)V

    .line 20
    const-class v1, Lorg/json/JSONObject;

    const-class v3, Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "application/json"

    move-object v5, v14

    invoke-virtual/range {v0 .. v5}, Lcom/koushikdutta/async/future/Converter$ConverterEntries;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Lcom/koushikdutta/async/future/TypeConverter;)V

    .line 21
    const-class v1, [B

    const-class v3, Ljava/lang/String;

    const-string v2, "text/plain"

    const/4 v4, 0x0

    move-object v5, v15

    invoke-virtual/range {v0 .. v5}, Lcom/koushikdutta/async/future/Converter$ConverterEntries;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Lcom/koushikdutta/async/future/TypeConverter;)V

    return-void
.end method

.method protected constructor <init>(Lcom/koushikdutta/async/future/Future;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/koushikdutta/async/future/MultiFuture;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/MultiFuture;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/future/Converter;->b:Lcom/koushikdutta/async/future/MultiFuture;

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "*/*"

    .line 4
    :cond_0
    iput-object p2, p0, Lcom/koushikdutta/async/future/Converter;->c:Ljava/lang/String;

    .line 5
    iget-object p2, p0, Lcom/koushikdutta/async/future/Converter;->b:Lcom/koushikdutta/async/future/MultiFuture;

    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->Z(Lcom/koushikdutta/async/future/Future;)Lcom/koushikdutta/async/future/Future;

    return-void
.end method

.method private synthetic A(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Lcom/koushikdutta/async/future/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0, p3, p1, p2}, Lcom/koushikdutta/async/future/Converter;->G(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    return-object p1
.end method

.method static B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "/"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 3
    aget-object v2, p1, v1

    const-string v3, "*"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    aget-object v1, p1, v1

    goto :goto_0

    :cond_0
    aget-object v1, p0, v1

    :goto_0
    const/4 v2, 0x1

    .line 4
    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    aget-object p0, p1, v2

    goto :goto_1

    :cond_1
    aget-object p0, p0, v2

    .line 5
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private C(Lcom/koushikdutta/async/future/Converter$MimedType;Ljava/util/ArrayDeque;Ljava/util/ArrayDeque;Lcom/koushikdutta/async/future/Converter$MimedType;Ljava/util/HashSet;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/future/Converter$MimedType<",
            "TT;>;",
            "Ljava/util/ArrayDeque<",
            "Lcom/koushikdutta/async/future/Converter$PathInfo;",
            ">;",
            "Ljava/util/ArrayDeque<",
            "Lcom/koushikdutta/async/future/Converter$PathInfo;",
            ">;",
            "Lcom/koushikdutta/async/future/Converter$MimedType;",
            "Ljava/util/HashSet<",
            "Lcom/koushikdutta/async/future/Converter$MimedType;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p4}, Lcom/koushikdutta/async/future/Converter$MimedType;->a(Lcom/koushikdutta/async/future/Converter$MimedType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->clear()V

    .line 3
    invoke-virtual {p2, p3}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {p3}, Lcom/koushikdutta/async/future/Converter$PathInfo;->a(Ljava/util/ArrayDeque;)I

    move-result v0

    invoke-static {p2}, Lcom/koushikdutta/async/future/Converter$PathInfo;->a(Ljava/util/ArrayDeque;)I

    move-result v2

    if-lt v0, v2, :cond_1

    return v1

    .line 5
    :cond_1
    invoke-virtual {p5, p4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 6
    :cond_2
    invoke-virtual {p5, p4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lcom/koushikdutta/async/future/Converter;->a:Lcom/koushikdutta/async/future/Converter$Converters;

    invoke-virtual {v0, p4}, Lcom/koushikdutta/async/future/Converter$Converters;->d(Lcom/koushikdutta/async/future/Converter$MimedType;)Lcom/koushikdutta/async/future/Converter$ConverterTransformers;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/koushikdutta/async/future/Converter$MimedType;

    .line 9
    new-instance v8, Lcom/koushikdutta/async/future/Converter$MimedType;

    iget-object v4, v3, Lcom/koushikdutta/async/future/Converter$MimedType;->a:Ljava/lang/Class;

    iget-object v5, p4, Lcom/koushikdutta/async/future/Converter$MimedType;->b:Ljava/lang/String;

    iget-object v6, v3, Lcom/koushikdutta/async/future/Converter$MimedType;->b:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/koushikdutta/async/future/Converter;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v4, v5}, Lcom/koushikdutta/async/future/Converter$MimedType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 10
    new-instance v4, Lcom/koushikdutta/async/future/Converter$PathInfo;

    invoke-direct {v4}, Lcom/koushikdutta/async/future/Converter$PathInfo;-><init>()V

    .line 11
    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/koushikdutta/async/future/Converter$MultiTransformer;

    iput-object v5, v4, Lcom/koushikdutta/async/future/Converter$PathInfo;->a:Lcom/koushikdutta/async/future/Converter$MultiTransformer;

    .line 12
    iget-object v5, v8, Lcom/koushikdutta/async/future/Converter$MimedType;->b:Ljava/lang/String;

    iput-object v5, v4, Lcom/koushikdutta/async/future/Converter$PathInfo;->b:Ljava/lang/String;

    .line 13
    iput-object v3, v4, Lcom/koushikdutta/async/future/Converter$PathInfo;->c:Lcom/koushikdutta/async/future/Converter$MimedType;

    .line 14
    invoke-virtual {p3, v4}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v9, p5

    .line 15
    :try_start_0
    invoke-direct/range {v4 .. v9}, Lcom/koushikdutta/async/future/Converter;->C(Lcom/koushikdutta/async/future/Converter$MimedType;Ljava/util/ArrayDeque;Ljava/util/ArrayDeque;Lcom/koushikdutta/async/future/Converter$MimedType;Ljava/util/HashSet;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    or-int/2addr v1, v3

    .line 16
    invoke-virtual {p3}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p3}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    throw p1

    :cond_3
    if-eqz v1, :cond_4

    .line 17
    invoke-virtual {p5, p4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_4
    return v1
.end method

.method private final declared-synchronized E(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/koushikdutta/async/future/Future<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p3, "*/*"

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/future/Converter;->a:Lcom/koushikdutta/async/future/Converter$Converters;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lcom/koushikdutta/async/future/Converter$Converters;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/Converter$Converters;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/future/Converter;->a:Lcom/koushikdutta/async/future/Converter$Converters;

    .line 4
    invoke-virtual {p0}, Lcom/koushikdutta/async/future/Converter;->o()Lcom/koushikdutta/async/future/Converter$ConverterEntries;

    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/koushikdutta/async/future/Converter$ConverterEntries;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/future/Converter$ConverterEntry;

    .line 6
    iget-object v2, p0, Lcom/koushikdutta/async/future/Converter;->a:Lcom/koushikdutta/async/future/Converter$Converters;

    iget-object v3, v1, Lcom/koushikdutta/async/future/Converter$ConverterEntry;->a:Lcom/koushikdutta/async/future/Converter$MimedType;

    invoke-virtual {v2, v3}, Lcom/koushikdutta/async/future/Converter$EnsureHashMap;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/koushikdutta/async/future/Converter$ConverterTransformers;

    iget-object v3, v1, Lcom/koushikdutta/async/future/Converter$ConverterEntry;->b:Lcom/koushikdutta/async/future/Converter$MimedType;

    new-instance v4, Lcom/koushikdutta/async/future/Converter$MultiTransformer;

    iget-object v5, v1, Lcom/koushikdutta/async/future/Converter$ConverterEntry;->d:Lcom/koushikdutta/async/future/TypeConverter;

    iget-object v6, v1, Lcom/koushikdutta/async/future/Converter$ConverterEntry;->b:Lcom/koushikdutta/async/future/Converter$MimedType;

    iget-object v6, v6, Lcom/koushikdutta/async/future/Converter$MimedType;->b:Ljava/lang/String;

    iget v1, v1, Lcom/koushikdutta/async/future/Converter$ConverterEntry;->c:I

    invoke-direct {v4, v5, v6, v1}, Lcom/koushikdutta/async/future/Converter$MultiTransformer;-><init>(Lcom/koushikdutta/async/future/TypeConverter;Ljava/lang/String;I)V

    invoke-virtual {v2, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_1
    new-instance v1, Lcom/koushikdutta/async/future/Converter$MimedType;

    invoke-direct {v1, p2, p3}, Lcom/koushikdutta/async/future/Converter$MimedType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 8
    new-instance p2, Ljava/util/ArrayDeque;

    invoke-direct {p2}, Ljava/util/ArrayDeque;-><init>()V

    .line 9
    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    .line 10
    new-instance v4, Lcom/koushikdutta/async/future/Converter$MimedType;

    iget-object p3, p0, Lcom/koushikdutta/async/future/Converter;->c:Ljava/lang/String;

    invoke-direct {v4, p1, p3}, Lcom/koushikdutta/async/future/Converter$MimedType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    move-object v0, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/future/Converter;->C(Lcom/koushikdutta/async/future/Converter$MimedType;Ljava/util/ArrayDeque;Ljava/util/ArrayDeque;Lcom/koushikdutta/async/future/Converter$MimedType;Ljava/util/HashSet;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/koushikdutta/async/future/Converter$PathInfo;

    .line 12
    new-instance p3, Lcom/koushikdutta/async/future/SimpleFuture;

    new-instance v0, Lcom/koushikdutta/async/future/Converter$MimedData;

    iget-object v1, p0, Lcom/koushikdutta/async/future/Converter;->b:Lcom/koushikdutta/async/future/MultiFuture;

    iget-object v2, p0, Lcom/koushikdutta/async/future/Converter;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/koushikdutta/async/future/Converter$MimedData;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p3, v0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/koushikdutta/async/future/Converter$PathInfo;->a:Lcom/koushikdutta/async/future/Converter$MultiTransformer;

    invoke-virtual {p3, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->B(Lcom/koushikdutta/async/future/FutureCallback;)V

    .line 13
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_2

    .line 14
    invoke-virtual {p2}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/koushikdutta/async/future/Converter$PathInfo;

    .line 15
    iget-object p1, p1, Lcom/koushikdutta/async/future/Converter$PathInfo;->a:Lcom/koushikdutta/async/future/Converter$MultiTransformer;

    iget-object v0, p3, Lcom/koushikdutta/async/future/Converter$PathInfo;->a:Lcom/koushikdutta/async/future/Converter$MultiTransformer;

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->B(Lcom/koushikdutta/async/future/FutureCallback;)V

    move-object p1, p3

    goto :goto_1

    .line 16
    :cond_2
    iget-object p1, p1, Lcom/koushikdutta/async/future/Converter$PathInfo;->a:Lcom/koushikdutta/async/future/Converter$MultiTransformer;

    sget-object p2, Lcom/koushikdutta/async/future/h;->a:Lcom/koushikdutta/async/future/h;

    invoke-virtual {p1, p2}, Lcom/koushikdutta/async/future/SimpleFuture;->t(Lcom/koushikdutta/async/future/ThenFutureCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 17
    :cond_3
    :try_start_1
    new-instance p1, Lcom/koushikdutta/async/future/SimpleFuture;

    new-instance p2, Ljava/io/InvalidObjectException;

    const-string p3, "unable to find converter"

    invoke-direct {p2, p3}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized G(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/koushikdutta/async/future/Future<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p2, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {p2, p1}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p2

    .line 3
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/koushikdutta/async/future/Converter;->E(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static synthetic a(Lcom/koushikdutta/async/future/Converter$MimedData;)Lcom/koushikdutta/async/future/Future;
    .locals 0

    invoke-static {p0}, Lcom/koushikdutta/async/future/Converter;->z(Lcom/koushikdutta/async/future/Converter$MimedData;)Lcom/koushikdutta/async/future/Future;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/koushikdutta/async/future/Converter;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Lcom/koushikdutta/async/future/Future;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/koushikdutta/async/future/Converter;->A(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Lcom/koushikdutta/async/future/Future;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/koushikdutta/async/ByteBufferList;Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;
    .locals 0

    invoke-static {p0, p1}, Lcom/koushikdutta/async/future/Converter;->t(Lcom/koushikdutta/async/ByteBufferList;Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;
    .locals 0

    invoke-static {p0, p1}, Lcom/koushikdutta/async/future/Converter;->y(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/koushikdutta/async/ByteBufferList;Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;
    .locals 0

    invoke-static {p0, p1}, Lcom/koushikdutta/async/future/Converter;->s(Lcom/koushikdutta/async/ByteBufferList;Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f([BLjava/lang/String;)Lcom/koushikdutta/async/future/Future;
    .locals 0

    invoke-static {p0, p1}, Lcom/koushikdutta/async/future/Converter;->q([BLjava/lang/String;)Lcom/koushikdutta/async/future/Future;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/koushikdutta/async/ByteBufferList;Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;
    .locals 0

    invoke-static {p0, p1}, Lcom/koushikdutta/async/future/Converter;->u(Lcom/koushikdutta/async/ByteBufferList;Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;
    .locals 0

    invoke-static {p0, p1}, Lcom/koushikdutta/async/future/Converter;->p(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;
    .locals 0

    invoke-static {p0, p1}, Lcom/koushikdutta/async/future/Converter;->x(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;
    .locals 0

    invoke-static {p0, p1}, Lcom/koushikdutta/async/future/Converter;->w(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k([BLjava/lang/String;)Lcom/koushikdutta/async/future/Future;
    .locals 0

    invoke-static {p0, p1}, Lcom/koushikdutta/async/future/Converter;->r([BLjava/lang/String;)Lcom/koushikdutta/async/future/Future;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l([BLjava/lang/String;)Lcom/koushikdutta/async/future/Future;
    .locals 0

    invoke-static {p0, p1}, Lcom/koushikdutta/async/future/Converter;->v([BLjava/lang/String;)Lcom/koushikdutta/async/future/Future;

    move-result-object p0

    return-object p0
.end method

.method public static m(Lcom/koushikdutta/async/future/Future;)Lcom/koushikdutta/async/future/Converter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/future/Future<",
            "TT;>;)",
            "Lcom/koushikdutta/async/future/Converter<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/koushikdutta/async/future/Converter;->n(Lcom/koushikdutta/async/future/Future;Ljava/lang/String;)Lcom/koushikdutta/async/future/Converter;

    move-result-object p0

    return-object p0
.end method

.method public static n(Lcom/koushikdutta/async/future/Future;Ljava/lang/String;)Lcom/koushikdutta/async/future/Converter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/future/Future<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/koushikdutta/async/future/Converter<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/koushikdutta/async/future/Converter;

    invoke-direct {v0, p0, p1}, Lcom/koushikdutta/async/future/Converter;-><init>(Lcom/koushikdutta/async/future/Future;Ljava/lang/String;)V

    return-object v0
.end method

.method private static synthetic p(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance p1, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {p1, p0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>(Ljava/lang/Object;)V

    sget-object p0, Lcom/koushikdutta/async/future/a;->a:Lcom/koushikdutta/async/future/a;

    invoke-virtual {p1, p0}, Lcom/koushikdutta/async/future/SimpleFuture;->F(Lcom/koushikdutta/async/future/ThenCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic q([BLjava/lang/String;)Lcom/koushikdutta/async/future/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance p1, Lcom/koushikdutta/async/future/SimpleFuture;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p1, v0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method private static synthetic r([BLjava/lang/String;)Lcom/koushikdutta/async/future/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance p1, Lcom/koushikdutta/async/future/SimpleFuture;

    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/nio/ByteBuffer;

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lcom/koushikdutta/async/ByteBufferList;->g(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/ByteBufferList;-><init>([Ljava/nio/ByteBuffer;)V

    invoke-direct {p1, v0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method private static synthetic s(Lcom/koushikdutta/async/ByteBufferList;Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance p1, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->p()[B

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method private static synthetic t(Lcom/koushikdutta/async/ByteBufferList;Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance p1, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->n()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method private static synthetic u(Lcom/koushikdutta/async/ByteBufferList;Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance p1, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {p0}, Lcom/koushikdutta/async/ByteBufferList;->H()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method private static synthetic v([BLjava/lang/String;)Lcom/koushikdutta/async/future/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance p1, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lcom/koushikdutta/async/ByteBufferList;->g(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method private static synthetic w(Ljava/nio/ByteBuffer;Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance p1, Lcom/koushikdutta/async/future/SimpleFuture;

    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/nio/ByteBuffer;

    invoke-static {p0}, Lcom/koushikdutta/async/ByteBufferList;->g(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/ByteBufferList;-><init>([Ljava/nio/ByteBuffer;)V

    invoke-direct {p1, v0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method private static synthetic x(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance p1, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method private static synthetic y(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance p1, Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-direct {p1, p0}, Lcom/koushikdutta/async/future/SimpleFuture;-><init>(Ljava/lang/Object;)V

    sget-object p0, Lcom/koushikdutta/async/future/f;->a:Lcom/koushikdutta/async/future/f;

    invoke-virtual {p1, p0}, Lcom/koushikdutta/async/future/SimpleFuture;->F(Lcom/koushikdutta/async/future/ThenCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic z(Lcom/koushikdutta/async/future/Converter$MimedData;)Lcom/koushikdutta/async/future/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/koushikdutta/async/future/Converter$MimedData;->a:Ljava/lang/Object;

    check-cast p0, Lcom/koushikdutta/async/future/Future;

    return-object p0
.end method


# virtual methods
.method public final D(Ljava/lang/Class;)Lcom/koushikdutta/async/future/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/koushikdutta/async/future/Future<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/future/Converter;->F(Ljava/lang/Class;Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    return-object p1
.end method

.method public F(Ljava/lang/Class;Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/koushikdutta/async/future/Future<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/koushikdutta/async/future/Converter;->b:Lcom/koushikdutta/async/future/MultiFuture;

    new-instance v1, Lcom/koushikdutta/async/future/g;

    invoke-direct {v1, p0, p1, p2}, Lcom/koushikdutta/async/future/g;-><init>(Lcom/koushikdutta/async/future/Converter;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/future/SimpleFuture;->t(Lcom/koushikdutta/async/future/ThenFutureCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    return-object p1
.end method

.method protected o()Lcom/koushikdutta/async/future/Converter$ConverterEntries;
    .locals 2

    new-instance v0, Lcom/koushikdutta/async/future/Converter$ConverterEntries;

    sget-object v1, Lcom/koushikdutta/async/future/Converter;->e:Lcom/koushikdutta/async/future/Converter$ConverterEntries;

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/future/Converter$ConverterEntries;-><init>(Lcom/koushikdutta/async/future/Converter$ConverterEntries;)V

    return-object v0
.end method
