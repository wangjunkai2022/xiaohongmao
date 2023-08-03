.class public final Ldagger/hilt/android/internal/modules/d;
.super Ljava/lang/Object;
.source "ApplicationContextModule_ProvideApplicationFactory.java"

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
        "Landroid/app/Application;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ldagger/hilt/android/internal/modules/c;


# direct methods
.method public constructor <init>(Ldagger/hilt/android/internal/modules/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "module"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ldagger/hilt/android/internal/modules/d;->a:Ldagger/hilt/android/internal/modules/c;

    return-void
.end method

.method public static a(Ldagger/hilt/android/internal/modules/c;)Ldagger/hilt/android/internal/modules/d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "module"
        }
    .end annotation

    new-instance v0, Ldagger/hilt/android/internal/modules/d;

    invoke-direct {v0, p0}, Ldagger/hilt/android/internal/modules/d;-><init>(Ldagger/hilt/android/internal/modules/c;)V

    return-object v0
.end method

.method public static c(Ldagger/hilt/android/internal/modules/c;)Landroid/app/Application;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    invoke-virtual {p0}, Ldagger/hilt/android/internal/modules/c;->a()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/p;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    return-object p0
.end method


# virtual methods
.method public b()Landroid/app/Application;
    .locals 1

    iget-object v0, p0, Ldagger/hilt/android/internal/modules/d;->a:Ldagger/hilt/android/internal/modules/c;

    invoke-static {v0}, Ldagger/hilt/android/internal/modules/d;->c(Ldagger/hilt/android/internal/modules/c;)Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldagger/hilt/android/internal/modules/d;->b()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method
