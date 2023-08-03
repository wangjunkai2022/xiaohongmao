.class public final Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper_Factory;
.super Ljava/lang/Object;
.source "PrefsHelper_Factory.java"

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
        "Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;",
        ">;"
    }
.end annotation


# instance fields
.field private final gsonProvider:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/google/gson/Gson;",
            ">;"
        }
    .end annotation
.end field

.field private final prefsProvider:Lu7/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;",
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
            "Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;",
            ">;",
            "Lu7/c<",
            "Lcom/google/gson/Gson;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper_Factory;->prefsProvider:Lu7/c;

    .line 3
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper_Factory;->gsonProvider:Lu7/c;

    return-void
.end method

.method public static create(Lu7/c;Lu7/c;)Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu7/c<",
            "Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;",
            ">;",
            "Lu7/c<",
            "Lcom/google/gson/Gson;",
            ">;)",
            "Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper_Factory;

    invoke-direct {v0, p0, p1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper_Factory;-><init>(Lu7/c;Lu7/c;)V

    return-object v0
.end method

.method public static newInstance(Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;Lcom/google/gson/Gson;)Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;

    invoke-direct {v0, p0, p1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;-><init>(Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;Lcom/google/gson/Gson;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper_Factory;->prefsProvider:Lu7/c;

    invoke-interface {v0}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper_Factory;->gsonProvider:Lu7/c;

    invoke-interface {v1}, Lu7/c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/Gson;

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper_Factory;->newInstance(Lcom/qennnsad/aknkaksd/data/sharedpreference/Prefs;Lcom/google/gson/Gson;)Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper_Factory;->get()Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;

    move-result-object v0

    return-object v0
.end method
