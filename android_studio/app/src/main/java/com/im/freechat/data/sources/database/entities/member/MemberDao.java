package com.im.freechat.data.sources.database.entities.member;

import androidx.room.Dao;
import androidx.room.Query;
import androidx.room.Transaction;
import com.im.freechat.data.sources.database.entities.BaseDao;
import java.util.List;
import k4.b;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.flow.i;
import m8.g;
import m8.h;

/* compiled from: MemberDao.kt */
@Dao
@Metadata(bv = {}, d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\b'\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0017\u0010\u0018J!\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H§@ø\u0001\u0000¢\u0006\u0004\b\u0006\u0010\u0007J\u001c\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00020\u00050\b2\u0006\u0010\u0004\u001a\u00020\u0003H'J+\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\nH§@ø\u0001\u0000¢\u0006\u0004\b\u000e\u0010\u000fJ+\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\nH§@ø\u0001\u0000¢\u0006\u0004\b\u0011\u0010\u000fJ\u001c\u0010\u0013\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120\u00050\b2\u0006\u0010\u0004\u001a\u00020\nH'J\u0018\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\nH'J!\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00120\u00052\u0006\u0010\u0004\u001a\u00020\u0003H§@ø\u0001\u0000¢\u0006\u0004\b\u0016\u0010\u0007\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0019"}, d2 = {"Lcom/im/freechat/data/sources/database/entities/member/MemberDao;", "Lcom/im/freechat/data/sources/database/entities/BaseDao;", "Lcom/im/freechat/data/sources/database/entities/member/MemberEntity;", "", b.f84734a, "", "getAllMembers", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/flow/i;", "listenAllMembers", "", "userId", "status", "", "updateStatus", "(Ljava/lang/String;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "role", "updateRole", "Lcom/im/freechat/data/sources/database/entities/member/ChatMemberEntity;", "listenAllContactsForChat", "memberId", "deleteMemberFromChat", "getAllContactsForChat", "<init>", "()V", "data_release"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes2.dex */
public abstract class MemberDao extends BaseDao<MemberEntity> {
    @Query("DELETE FROM member WHERE chat_id = :chatId AND user_id = :memberId")
    public abstract void deleteMemberFromChat(@g String str, int i4);

    @Query("SELECT * FROM member INNER JOIN user ON member.user_id = user.user_id WHERE chat_id = :chatId")
    @h
    @Transaction
    public abstract Object getAllContactsForChat(@g String str, @g Continuation<? super List<ChatMemberEntity>> continuation);

    @Query("SELECT * FROM member WHERE chat_id = :chatId")
    @h
    public abstract Object getAllMembers(@g String str, @g Continuation<? super List<MemberEntity>> continuation);

    @Query("SELECT * FROM member INNER JOIN user ON member.user_id = user.user_id WHERE chat_id = :chatId")
    @g
    @Transaction
    public abstract i<List<ChatMemberEntity>> listenAllContactsForChat(int i4);

    @Query("SELECT * FROM member WHERE chat_id = :chatId")
    @g
    public abstract i<List<MemberEntity>> listenAllMembers(@g String str);

    @Query("UPDATE member SET role = :role WHERE chat_id = :chatId AND user_id = :userId")
    @h
    public abstract Object updateRole(@g String str, int i4, int i10, @g Continuation<? super Unit> continuation);

    @Query("UPDATE member SET status = :status WHERE chat_id = :chatId AND user_id = :userId")
    @h
    public abstract Object updateStatus(@g String str, int i4, int i10, @g Continuation<? super Unit> continuation);
}
