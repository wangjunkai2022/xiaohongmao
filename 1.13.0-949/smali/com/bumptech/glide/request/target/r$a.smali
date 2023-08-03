.class Lcom/bumptech/glide/request/target/r$a;
.super Ljava/lang/Object;
.source "ViewTarget.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/request/target/r;->d()Lcom/bumptech/glide/request/target/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/request/target/r;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/request/target/r;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/request/target/r$a;->a:Lcom/bumptech/glide/request/target/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/bumptech/glide/request/target/r$a;->a:Lcom/bumptech/glide/request/target/r;

    invoke-virtual {p1}, Lcom/bumptech/glide/request/target/r;->m()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/bumptech/glide/request/target/r$a;->a:Lcom/bumptech/glide/request/target/r;

    invoke-virtual {p1}, Lcom/bumptech/glide/request/target/r;->l()V

    return-void
.end method
