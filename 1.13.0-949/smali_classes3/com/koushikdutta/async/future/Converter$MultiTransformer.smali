.class Lcom/koushikdutta/async/future/Converter$MultiTransformer;
.super Lcom/koushikdutta/async/future/MultiTransformFuture;
.source "Converter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/future/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MultiTransformer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "F:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/koushikdutta/async/future/MultiTransformFuture<",
        "Lcom/koushikdutta/async/future/Converter$MimedData<",
        "Lcom/koushikdutta/async/future/Future<",
        "TT;>;>;",
        "Lcom/koushikdutta/async/future/Converter$MimedData<",
        "Lcom/koushikdutta/async/future/Future<",
        "TF;>;>;>;"
    }
.end annotation


# instance fields
.field m:Lcom/koushikdutta/async/future/TypeConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/future/TypeConverter<",
            "TT;TF;>;"
        }
    .end annotation
.end field

.field n:Ljava/lang/String;

.field o:I


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/future/TypeConverter;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/future/TypeConverter<",
            "TT;TF;>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/koushikdutta/async/future/MultiTransformFuture;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/koushikdutta/async/future/Converter$MultiTransformer;->m:Lcom/koushikdutta/async/future/TypeConverter;

    .line 3
    iput-object p2, p0, Lcom/koushikdutta/async/future/Converter$MultiTransformer;->n:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/koushikdutta/async/future/Converter$MultiTransformer;->o:I

    return-void
.end method

.method public static synthetic m0(Lcom/koushikdutta/async/future/MultiFuture;Ljava/lang/Exception;Lcom/koushikdutta/async/future/Future;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/koushikdutta/async/future/Converter$MultiTransformer;->p0(Lcom/koushikdutta/async/future/MultiFuture;Ljava/lang/Exception;Lcom/koushikdutta/async/future/Future;)V

    return-void
.end method

.method public static synthetic n0(Lcom/koushikdutta/async/future/Converter$MultiTransformer;Ljava/lang/String;Ljava/lang/Object;)Lcom/koushikdutta/async/future/Future;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/async/future/Converter$MultiTransformer;->o0(Ljava/lang/String;Ljava/lang/Object;)Lcom/koushikdutta/async/future/Future;

    move-result-object p0

    return-object p0
.end method

.method private synthetic o0(Ljava/lang/String;Ljava/lang/Object;)Lcom/koushikdutta/async/future/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/koushikdutta/async/future/Converter$MultiTransformer;->m:Lcom/koushikdutta/async/future/TypeConverter;

    invoke-interface {v0, p2, p1}, Lcom/koushikdutta/async/future/TypeConverter;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic p0(Lcom/koushikdutta/async/future/MultiFuture;Ljava/lang/Exception;Lcom/koushikdutta/async/future/Future;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->b0(Ljava/lang/Exception;)Z

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p2}, Lcom/koushikdutta/async/future/SimpleFuture;->Z(Lcom/koushikdutta/async/future/Future;)Lcom/koushikdutta/async/future/Future;

    :goto_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic l0(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lcom/koushikdutta/async/future/Converter$MimedData;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/future/Converter$MultiTransformer;->q0(Lcom/koushikdutta/async/future/Converter$MimedData;)V

    return-void
.end method

.method protected q0(Lcom/koushikdutta/async/future/Converter$MimedData;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/future/Converter$MimedData<",
            "Lcom/koushikdutta/async/future/Future<",
            "TF;>;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/koushikdutta/async/future/Converter$MimedData;->b:Ljava/lang/String;

    .line 2
    new-instance v1, Lcom/koushikdutta/async/future/MultiFuture;

    invoke-direct {v1}, Lcom/koushikdutta/async/future/MultiFuture;-><init>()V

    .line 3
    new-instance v2, Lcom/koushikdutta/async/future/Converter$MimedData;

    iget-object v3, p0, Lcom/koushikdutta/async/future/Converter$MultiTransformer;->n:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/koushikdutta/async/future/Converter;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/koushikdutta/async/future/Converter$MimedData;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/koushikdutta/async/future/SimpleFuture;->e0(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p1, Lcom/koushikdutta/async/future/Converter$MimedData;->a:Ljava/lang/Object;

    check-cast p1, Lcom/koushikdutta/async/future/Future;

    new-instance v2, Lcom/koushikdutta/async/future/p;

    invoke-direct {v2, p0, v0}, Lcom/koushikdutta/async/future/p;-><init>(Lcom/koushikdutta/async/future/Converter$MultiTransformer;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lcom/koushikdutta/async/future/Future;->F(Lcom/koushikdutta/async/future/ThenCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    new-instance v0, Lcom/koushikdutta/async/future/o;

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/future/o;-><init>(Lcom/koushikdutta/async/future/MultiFuture;)V

    .line 5
    invoke-interface {p1, v0}, Lcom/koushikdutta/async/future/Future;->B(Lcom/koushikdutta/async/future/FutureCallback;)V

    return-void
.end method
