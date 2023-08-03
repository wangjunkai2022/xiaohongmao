.class public Lme/imid/swipebacklayout/lib/app/SwipeBackPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "SwipeBackPreferenceActivity.java"

# interfaces
.implements Lme/imid/swipebacklayout/lib/app/a;


# instance fields
.field private a:Lme/imid/swipebacklayout/lib/app/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Z)V
    .locals 1

    invoke-virtual {p0}, Lme/imid/swipebacklayout/lib/app/SwipeBackPreferenceActivity;->f()Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->setEnableGesture(Z)V

    return-void
.end method

.method public f()Lme/imid/swipebacklayout/lib/SwipeBackLayout;
    .locals 1

    iget-object v0, p0, Lme/imid/swipebacklayout/lib/app/SwipeBackPreferenceActivity;->a:Lme/imid/swipebacklayout/lib/app/b;

    invoke-virtual {v0}, Lme/imid/swipebacklayout/lib/app/b;->b()Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    move-result-object v0

    return-object v0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v1, p0, Lme/imid/swipebacklayout/lib/app/SwipeBackPreferenceActivity;->a:Lme/imid/swipebacklayout/lib/app/b;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, p1}, Lme/imid/swipebacklayout/lib/app/b;->a(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public o()V
    .locals 1

    invoke-virtual {p0}, Lme/imid/swipebacklayout/lib/app/SwipeBackPreferenceActivity;->f()Lme/imid/swipebacklayout/lib/SwipeBackLayout;

    move-result-object v0

    invoke-virtual {v0}, Lme/imid/swipebacklayout/lib/SwipeBackLayout;->t()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Lme/imid/swipebacklayout/lib/app/b;

    invoke-direct {p1, p0}, Lme/imid/swipebacklayout/lib/app/b;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lme/imid/swipebacklayout/lib/app/SwipeBackPreferenceActivity;->a:Lme/imid/swipebacklayout/lib/app/b;

    .line 3
    invoke-virtual {p1}, Lme/imid/swipebacklayout/lib/app/b;->c()V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lme/imid/swipebacklayout/lib/app/SwipeBackPreferenceActivity;->a:Lme/imid/swipebacklayout/lib/app/b;

    invoke-virtual {p1}, Lme/imid/swipebacklayout/lib/app/b;->d()V

    return-void
.end method
