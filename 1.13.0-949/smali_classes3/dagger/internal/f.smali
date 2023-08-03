.class public final Ldagger/internal/f;
.super Ljava/lang/Object;
.source "DelegateFactory.java"

# interfaces
.implements Ldagger/internal/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ldagger/internal/h<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Lu7/c;Lu7/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lu7/c<",
            "TT;>;",
            "Lu7/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ldagger/internal/p;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    check-cast p0, Ldagger/internal/f;

    .line 3
    iget-object v0, p0, Ldagger/internal/f;->a:Lu7/c;

    if-nez v0, :cond_0

    .line 4
    iput-object p1, p0, Ldagger/internal/f;->a:Lu7/c;

    return-void

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method


# virtual methods
.method a()Lu7/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lu7/c<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Ldagger/internal/f;->a:Lu7/c;

    invoke-static {v0}, Ldagger/internal/p;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu7/c;

    return-object v0
.end method

.method public c(Lu7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Ldagger/internal/f;->b(Lu7/c;Lu7/c;)V

    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldagger/internal/f;->a:Lu7/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
