.class public final Lcom/google/android/gms/common/a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.0.1"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/a$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/accounts/Account;Ljava/util/ArrayList;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 3
    .param p0    # Landroid/accounts/Account;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/util/ArrayList<",
            "Landroid/accounts/Account;",
            ">;[",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x1

    const-string v2, "We only support hostedDomain filter for account chip styled account picker"

    .line 2
    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/u;->b(ZLjava/lang/Object;)V

    const-string v1, "com.google.android.gms.common.account.CHOOSE_ACCOUNT"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.google.android.gms"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "allowableAccounts"

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "allowableAccountTypes"

    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "addAccountOptions"

    .line 7
    invoke-virtual {v0, p1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p1, "selectedAccount"

    .line 8
    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p0, "alwaysPromptForAccount"

    .line 9
    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "descriptionTextOverride"

    .line 10
    invoke-virtual {v0, p0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "authTokenType"

    .line 11
    invoke-virtual {v0, p0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "addAccountRequiredFeatures"

    .line 12
    invoke-virtual {v0, p0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "setGmsCoreAccount"

    const/4 p1, 0x0

    .line 13
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "overrideTheme"

    .line 14
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "overrideCustomTheme"

    .line 15
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "hostedDomainFilter"

    const/4 p1, 0x0

    .line 16
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static b(Lcom/google/android/gms/common/a$a;)Landroid/content/Intent;
    .locals 4
    .param p0    # Lcom/google/android/gms/common/a$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/common/a$a;->d(Lcom/google/android/gms/common/a$a;)Z

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/common/a$a;->i(Lcom/google/android/gms/common/a$a;)Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "We only support hostedDomain filter for account chip styled account picker"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/u;->b(ZLjava/lang/Object;)V

    .line 4
    invoke-static {p0}, Lcom/google/android/gms/common/a$a;->h(Lcom/google/android/gms/common/a$a;)Lcom/google/android/gms/common/s;

    const-string v2, "Consent is only valid for account chip styled account picker"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/u;->b(ZLjava/lang/Object;)V

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/common/a$a;->b(Lcom/google/android/gms/common/a$a;)Z

    const-string v2, "Making the selected account non-clickable is only supported for the theme THEME_DAY_NIGHT_GOOGLE_MATERIAL2"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/u;->b(ZLjava/lang/Object;)V

    .line 6
    invoke-static {p0}, Lcom/google/android/gms/common/a$a;->d(Lcom/google/android/gms/common/a$a;)Z

    const-string v1, "com.google.android.gms.common.account.CHOOSE_ACCOUNT"

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.google.android.gms"

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    invoke-static {p0}, Lcom/google/android/gms/common/a$a;->m(Lcom/google/android/gms/common/a$a;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "allowableAccounts"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 10
    invoke-static {p0}, Lcom/google/android/gms/common/a$a;->l(Lcom/google/android/gms/common/a$a;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 11
    invoke-static {p0}, Lcom/google/android/gms/common/a$a;->l(Lcom/google/android/gms/common/a$a;)Ljava/util/ArrayList;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/String;

    .line 12
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const-string v3, "allowableAccountTypes"

    .line 13
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/common/a$a;->g(Lcom/google/android/gms/common/a$a;)Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "addAccountOptions"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 15
    invoke-static {p0}, Lcom/google/android/gms/common/a$a;->f(Lcom/google/android/gms/common/a$a;)Landroid/accounts/Account;

    move-result-object v1

    const-string v3, "selectedAccount"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 16
    invoke-static {p0}, Lcom/google/android/gms/common/a$a;->b(Lcom/google/android/gms/common/a$a;)Z

    const-string v1, "selectedAccountIsNotClickable"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 17
    invoke-static {p0}, Lcom/google/android/gms/common/a$a;->C(Lcom/google/android/gms/common/a$a;)Z

    move-result v1

    const-string v3, "alwaysPromptForAccount"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 18
    invoke-static {p0}, Lcom/google/android/gms/common/a$a;->k(Lcom/google/android/gms/common/a$a;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "descriptionTextOverride"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    invoke-static {p0}, Lcom/google/android/gms/common/a$a;->c(Lcom/google/android/gms/common/a$a;)Z

    const-string v1, "setGmsCoreAccount"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 20
    invoke-static {p0}, Lcom/google/android/gms/common/a$a;->j(Lcom/google/android/gms/common/a$a;)Ljava/lang/String;

    const-string v1, "realClientPackage"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    invoke-static {p0}, Lcom/google/android/gms/common/a$a;->e(Lcom/google/android/gms/common/a$a;)I

    const-string v1, "overrideTheme"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 22
    invoke-static {p0}, Lcom/google/android/gms/common/a$a;->d(Lcom/google/android/gms/common/a$a;)Z

    const-string v1, "overrideCustomTheme"

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 24
    invoke-static {p0}, Lcom/google/android/gms/common/a$a;->i(Lcom/google/android/gms/common/a$a;)Ljava/lang/String;

    const-string v1, "hostedDomainFilter"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/os/Bundle;

    .line 25
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 26
    invoke-static {p0}, Lcom/google/android/gms/common/a$a;->d(Lcom/google/android/gms/common/a$a;)Z

    .line 27
    invoke-static {p0}, Lcom/google/android/gms/common/a$a;->h(Lcom/google/android/gms/common/a$a;)Lcom/google/android/gms/common/s;

    .line 28
    invoke-static {p0}, Lcom/google/android/gms/common/a$a;->D(Lcom/google/android/gms/common/a$a;)Z

    .line 29
    invoke-static {p0}, Lcom/google/android/gms/common/a$a;->a(Lcom/google/android/gms/common/a$a;)Z

    .line 30
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "first_party_options_bundle"

    .line 31
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_1
    return-object v0
.end method
