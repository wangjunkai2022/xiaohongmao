.class public final synthetic Lcom/qennnsad/aknkaksd/data/sharedpreference/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/a;->a:Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/sharedpreference/a;->a:Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;

    invoke-static {v0, p1, p2}, Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;->a(Lcom/qennnsad/aknkaksd/data/sharedpreference/PrefsHelper;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method
