.class public Lcom/bumptech/glide/integration/okhttp3/OkHttpGlideModule;
.super Ljava/lang/Object;
.source "OkHttpGlideModule.java"

# interfaces
.implements Lcom/bumptech/glide/module/c;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/bumptech/glide/d;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public b(Landroid/content/Context;Lcom/bumptech/glide/c;Lcom/bumptech/glide/Registry;)V
    .locals 1

    const-class p1, Lcom/bumptech/glide/load/model/g;

    const-class p2, Ljava/io/InputStream;

    new-instance v0, Lcom/bumptech/glide/integration/okhttp3/b$a;

    invoke-direct {v0}, Lcom/bumptech/glide/integration/okhttp3/b$a;-><init>()V

    invoke-virtual {p3, p1, p2, v0}, Lcom/bumptech/glide/Registry;->y(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/o;)Lcom/bumptech/glide/Registry;

    return-void
.end method