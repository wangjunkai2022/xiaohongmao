.class Lorg/minidns/d$c;
.super Ljava/lang/Object;
.source "MiniDnsFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/minidns/d;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/minidns/d;


# direct methods
.method constructor <init>(Lorg/minidns/d;)V
    .locals 0

    iput-object p1, p0, Lorg/minidns/d$c;->a:Lorg/minidns/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/minidns/d$c;->a:Lorg/minidns/d;

    invoke-static {v0}, Lorg/minidns/d;->c(Lorg/minidns/d;)Lorg/minidns/util/k;

    move-result-object v0

    iget-object v1, p0, Lorg/minidns/d$c;->a:Lorg/minidns/d;

    iget-object v1, v1, Lorg/minidns/d;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lorg/minidns/util/k;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
