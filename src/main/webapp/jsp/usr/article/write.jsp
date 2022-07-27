<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<h1>게시물 작성</h1>

<script>
function ArticleSave__submitForm(form) {
    form.title.value = form.title.value.trim();

    if ( form.title.value.length == 0 ) {
        alert('제목을 입력해주세요.');
        form.title.focus();
        return;
    }

    form.body.value = form.body.value.trim();

    if ( form.body.value.length == 0 ) {
        alert('내용을 입력해주세요.');
        form.body.focus();
        return;
    }

    form.submit();
}
</script>
<!--form 태그는 양식을 작성할 때 사용한다. -->
<!--return false가 여기서 쓰인 거구나? 위에 <Script>단에서 ArticleSave__submitForm에 대한 함수정의를 한거고. this는 해당 form을 가리키고. -->
<form method="POST" onsubmit="ArticleSave__submitForm(this); return false;">
    <!--form의 버튼을 누른다. => URL생성기 -->
    <div>
        <span>제목</span>
        <div>
            <input name="title" type="text" maxlength="50" placeholder="제목을 입력해주세요." />
            <!-- 단순히 Html태그를 사용한 코드 -->
            <!-- name은 중요하다. url의 파라미터로 넘길 때 이름이다. -->
        </div>
    </div>
    <div>
        <span>내용</span>
        <div>
            <input name="body" type="text" maxlength="300" placeholder="내용을 입력해주세요." />
        </div>
    </div>

    <div>
        <span>작성</span>
        <div>
            <input type="submit" value="작성" />
        </div>
    </div>
</form>