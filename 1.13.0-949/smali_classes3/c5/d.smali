.class public final Lc5/d;
.super Ljava/lang/Object;
.source "Authenticator_Factory.java"

# interfaces
.implements Ldagger/internal/h;


# annotations
.annotation build Ldagger/internal/e;
.end annotation

.annotation build Ldagger/internal/r;
.end annotation

.annotation build Ldagger/internal/s;
    value = "javax.inject.Singleton"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/h<",
        "Lc5/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lg5/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lu7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Lg5/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc5/d;->a:Lu7/c;

    return-void
.end method

.method public static a(Lu7/c;)Lc5/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Lg5/a;",
            ">;)",
            "Lc5/d;"
        }
    .end annotation

    new-instance v0, Lc5/d;

    invoke-direct {v0, p0}, Lc5/d;-><init>(Lu7/c;)V

    return-object v0
.end method

.method public static c(Lg5/a;)Lc5/b;
    .locals 1

    new-instance v0, Lc5/b;

    invoke-direct {v0, p0}, Lc5/b;-><init>(Lg5/a;)V

    return-object v0
.end method


# virtual methods
.method public b()Lc5/b;
    .locals 1

    iget-object v0, p0, Lc5/d;->a:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg5/a;

    invoke-static {v0}, Lc5/d;->c(Lg5/a;)Lc5/b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lc5/d;->b()Lc5/b;

    move-result-object v0

    return-object v0
.end method
