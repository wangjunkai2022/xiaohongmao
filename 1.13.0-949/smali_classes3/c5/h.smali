.class public final Lc5/h;
.super Ljava/lang/Object;
.source "WebViewAuthInterceptor_Factory.java"

# interfaces
.implements Ldagger/internal/h;


# annotations
.annotation build Ldagger/internal/e;
.end annotation

.annotation build Ldagger/internal/r;
.end annotation

.annotation build Ldagger/internal/s;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/h<",
        "Lc5/g;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lc5/b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lg5/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lu7/c;Lu7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Lc5/b;",
            ">;",
            "Lu7/c<",
            "Lg5/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc5/h;->a:Lu7/c;

    .line 3
    iput-object p2, p0, Lc5/h;->b:Lu7/c;

    return-void
.end method

.method public static a(Lu7/c;Lu7/c;)Lc5/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Lc5/b;",
            ">;",
            "Lu7/c<",
            "Lg5/a;",
            ">;)",
            "Lc5/h;"
        }
    .end annotation

    new-instance v0, Lc5/h;

    invoke-direct {v0, p0, p1}, Lc5/h;-><init>(Lu7/c;Lu7/c;)V

    return-object v0
.end method

.method public static c(Lc5/b;Lg5/a;)Lc5/g;
    .locals 1

    new-instance v0, Lc5/g;

    invoke-direct {v0, p0, p1}, Lc5/g;-><init>(Lc5/b;Lg5/a;)V

    return-object v0
.end method


# virtual methods
.method public b()Lc5/g;
    .locals 2

    iget-object v0, p0, Lc5/h;->a:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc5/b;

    iget-object v1, p0, Lc5/h;->b:Lu7/c;

    invoke-interface {v1}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg5/a;

    invoke-static {v0, v1}, Lc5/h;->c(Lc5/b;Lg5/a;)Lc5/g;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lc5/h;->b()Lc5/g;

    move-result-object v0

    return-object v0
.end method