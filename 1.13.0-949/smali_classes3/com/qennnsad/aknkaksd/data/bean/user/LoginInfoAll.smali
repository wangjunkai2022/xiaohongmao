.class public Lcom/qennnsad/aknkaksd/data/bean/user/LoginInfoAll;
.super Ljava/lang/Object;
.source "LoginInfoAll.java"


# instance fields
.field private imRole:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "im_role"
    .end annotation
.end field

.field private jwtToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "jwt_token"
    .end annotation
.end field

.field private user:Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImRole()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/LoginInfoAll;->imRole:I

    return v0
.end method

.method public getJwtToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/LoginInfoAll;->jwtToken:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/user/LoginInfoAll;->user:Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;

    return-object v0
.end method

.method public setImRole(I)V
    .locals 0

    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/LoginInfoAll;->imRole:I

    return-void
.end method

.method public setJwtToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/LoginInfoAll;->jwtToken:Ljava/lang/String;

    return-void
.end method

.method public setUser(Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;)V
    .locals 0

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/LoginInfoAll;->user:Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoginInfoAll{jwtToken=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/LoginInfoAll;->jwtToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/LoginInfoAll;->user:Lcom/qennnsad/aknkaksd/data/bean/user/UserBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", imRole="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/user/LoginInfoAll;->imRole:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
