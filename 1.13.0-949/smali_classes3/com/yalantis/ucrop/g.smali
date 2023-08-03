.class public Lcom/yalantis/ucrop/g;
.super Ljava/lang/Object;
.source "UCropInitializer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/OkHttpClient;)Lcom/yalantis/ucrop/g;
    .locals 1
    .param p1    # Lokhttp3/OkHttpClient;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/yalantis/ucrop/b;->b:Lcom/yalantis/ucrop/b;

    invoke-virtual {v0, p1}, Lcom/yalantis/ucrop/b;->b(Lokhttp3/OkHttpClient;)V

    return-object p0
.end method
