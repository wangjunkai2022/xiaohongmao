.class public final Ldagger/hilt/android/internal/modules/b;
.super Ljava/lang/Object;
.source "ActivityModule_ProvideFragmentActivityFactory.java"

# interfaces
.implements Ldagger/internal/h;


# annotations
.annotation build Ldagger/internal/e;
.end annotation

.annotation build Ldagger/internal/r;
.end annotation

.annotation build Ldagger/internal/s;
    value = "dagger.Reusable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/h<",
        "Landroidx/fragment/app/FragmentActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lu7/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activityProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ldagger/hilt/android/internal/modules/b;->a:Lu7/c;

    return-void
.end method

.method public static a(Lu7/c;)Ldagger/hilt/android/internal/modules/b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activityProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Landroid/app/Activity;",
            ">;)",
            "Ldagger/hilt/android/internal/modules/b;"
        }
    .end annotation

    new-instance v0, Ldagger/hilt/android/internal/modules/b;

    invoke-direct {v0, p0}, Ldagger/hilt/android/internal/modules/b;-><init>(Lu7/c;)V

    return-object v0
.end method

.method public static c(Landroid/app/Activity;)Landroidx/fragment/app/FragmentActivity;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    invoke-static {p0}, Ldagger/hilt/android/internal/modules/a;->b(Landroid/app/Activity;)Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/p;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/FragmentActivity;

    return-object p0
.end method


# virtual methods
.method public b()Landroidx/fragment/app/FragmentActivity;
    .locals 1

    iget-object v0, p0, Ldagger/hilt/android/internal/modules/b;->a:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Ldagger/hilt/android/internal/modules/b;->c(Landroid/app/Activity;)Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldagger/hilt/android/internal/modules/b;->b()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method
